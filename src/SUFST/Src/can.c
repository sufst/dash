#include "tx_api.h"
#include "rtcan.h"
#include "can.h"
#include "string.h" // for memcpy()

#define RTCAN_THREAD_PRIORITY   3
#define MY_THREAD_PRIORITY      4
#define MY_THREAD_STACK_SIZE    1024

static rtcan_handle_t rtcan;
static TX_THREAD my_thread;
static TX_QUEUE rx_queue;
static ULONG rx_queue_mem[10];

static void my_thread_entry(ULONG thread_input);

/**
 * initialise a thread which will use RTCAN services
 */
void init_my_thread(TX_BYTE_POOL* app_mem_pool)
{
    // initialise RTCAN instance
    rtcan_init(&rtcan, 
               &hcan1, 
               RTCAN_THREAD_PRIORITY, 
               app_mem_pool);

    // allocate memory for thread
    void* stack_ptr;
    tx_byte_allocate(app_mem_pool,
                     &stack_ptr,
                     MY_THREAD_STACK_SIZE,
                     TX_NO_WAIT);

    // create thread
    tx_thread_create(&my_thread,
                     my_thread_entry,
                     NULL,
                     stack_ptr,
                     MY_THREAD_STACK_SIZE,
                     MY_THREAD_PRIORITY,
                     MY_THREAD_PRIORITY,
                     TX_NO_TIME_SLICE,
                     TX_AUTO_START);

    // subscribe to a message
    tx_queue_create(&rx_queue,
                    "My Rx Queue",
                    TX_1_ULONG,
                    rx_queue_mem,
                    sizeof(rx_queue));

    rtcan_subscribe(&rtcan, 0x100, &rx_queue);

    // start the RTCAN service
    rtcan_start(&rtcan);
}

/**
 * thread which uses RTCAN services
 */
void my_thread_entry(ULONG thread_input)
{
    (void) thread_input; // unused

    while (1)
    {
        // wait for an item to enter the rx queue
        rtcan_msg_t* msg_ptr;

        tx_queue_receive(&rx_queue, 
                         (void*) &msg_ptr, 
                         TX_WAIT_FOREVER);

        // make a copy of the message but change the ID to 0x101
        rtcan_msg_t new_message;
        new_message.identifier = 0x101;
        new_message.length = message_ptr->length;
        memcpy((void*) new_message.data, (void*) message_ptr->data, msg_ptr->length);

        // transmit the copied message
        rtcan_transmit(&rtcan, &new_message);

        // mark the original received message as consumed
        rtcan_msg_consumed(&rtcan, msg_ptr);
    }
}

/**
 * implement HAL CAN callbacks to call RTCAN handler functions
 * 
 * note: specific callbacks depend on CAN capabilities of target STM32
 */
void HAL_CAN_TxMailbox0CompleteCallback(CAN_HandleTypeDef* can_h)
{
    rtcan_handle_tx_mailbox_callback(&rtcan, can_h);
}

void HAL_CAN_TxMailbox1CompleteCallback(CAN_HandleTypeDef* can_h)
{
    rtcan_handle_tx_mailbox_callback(&rtcan, can_h);
}

void HAL_CAN_TxMailbox2CompleteCallback(CAN_HandleTypeDef* can_h)
{
    rtcan_handle_tx_mailbox_callback(&rtcan, can_h);
}

void HAL_CAN_RxFifo0MsgPendingCallback(CAN_HandleTypeDef* can_h)
{
    rtcan_handle_rx_it(&rtcan, can_h, 0);
}

void HAL_CAN_RxFifo1MsgPendingCallback(CAN_HandleTypeDef* can_h)
{
    rtcan_handle_rx_it(&rtcan, can_h, 1);
}