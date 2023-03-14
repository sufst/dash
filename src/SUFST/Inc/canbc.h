#ifndef __APP_CANBC__
#define __APP_CANBC__

#ifdef __cplusplus
extern "C" {
#endif

/**
 * initialise a thread which will use RTCAN services
 */
void init_my_thread(TX_BYTE_POOL* app_mem_pool);

#ifdef __cplusplus
}
#endif

#endif // __APP_CANBC__