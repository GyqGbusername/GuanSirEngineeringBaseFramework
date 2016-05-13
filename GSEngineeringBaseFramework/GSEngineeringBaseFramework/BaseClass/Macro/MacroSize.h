//
//  MacroSize.h
//  GSEngineeringBaseFramework
//
//  Created by 关宇琼 on 16/5/5.
//  Copyright © 2016年 GuanSir. All rights reserved.
//

#ifndef MacroSize_h
#define MacroSize_h

#define gs_Navi_Height 64
#define gs_TabBar_Height 49


#define gs_Layout_Width layoutAttributes.frame.size.width
#define gs_Layout_Height layoutAttributes.frame.size.height
#define gs_Layout_Frame (CGRectMake(0, 0, gs_Layout_Width, gs_Layout_Height))


#define gs_View_Width self.frame.size.width
#define gs_View_Height self.frame.size.height
#define gs_View_Frame (CGRectMake(0, 0, gs_View_Width, gs_View_Height))


#define gs_Screen_Height      ([UIScreen mainScreen].bounds.size.height)
#define gs_Screen_Width       ([UIScreen mainScreen].bounds.size.width)
#define gs_Screen_Frame      (CGRectMake(0, 0 ,gs_Screen_Width, gs_Screen_Height))

#endif /* MacroSize_h */
