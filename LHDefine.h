//
//  LHDefine.h
//  dgame
//
//  Created by 李华 on 17/5/20.
//
//

#ifndef LHDefine_h
#define LHDefine_h

#define DEBUG

/********************** DEFINE **************************/

// log
#ifdef DEBUG
#define LHLog(...) NSLog(@"%s 第%d行 \n %@\n\n",__func__,__LINE__,[NSString stringWithFormat:__VA_ARGS__])
#else
#define LHLog(...)
#endif

/*********************** END ***************************/

#endif /* LHDefine_h */
