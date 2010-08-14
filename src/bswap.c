/*!The Tiny Box Library
 * 
 * TBox is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * TBox is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with TGraphic; 
 * If not, see <a href="http://www.gnu.org/licenses/"> http://www.gnu.org/licenses/</a>
 * 
 * Copyright (C) 2009 - 2010, ruki All rights reserved.
 *
 * \author		ruki
 * \file		bswap.c
 *
 */
/* /////////////////////////////////////////////////////////
 * includes
 */
#include "bswap.h"

/* /////////////////////////////////////////////////////////
 * macros
 */


/* /////////////////////////////////////////////////////////
 * interfaces 
 */
void tb_bswap_u16(tb_uint16_t* data)
{
	tb_byte_t* p = (tb_byte_t*)data;
	tb_byte_t b = p[0];
	p[0] = p[1];
	p[1] = b;
}
void tb_bswap_u32(tb_uint32_t* data)
{
	tb_byte_t* p = (tb_byte_t*)data;
	tb_byte_t b0 = p[0];
	tb_byte_t b1 = p[1];
	p[0] = p[3];
	p[1] = p[2];
	p[3] = b0;
	p[2] = b1;
}
