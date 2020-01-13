/*
** Copyright @ 2012-2019, Kingsoft office,All rights reserved.
**
** Redistribution and use in source and binary forms ,without modification and
** selling solely, are permitted provided that the following conditions are
** met:
**
** 1.Redistributions of source code must retain the above copyright notice,
**   this list of conditions and the following disclaimer.
** 2.Redistributions in binary form must reproduce the above copyright notice,
**	 this list of conditions and the following disclaimer in the documentation
**	 and/or other materials provided with the distribution.
** 3.Neither the name of the copyright holder nor the names of its contributors
**	 may be used to endorse or promote products derived from this software
**	 without specific prior written permission.
**
** SPECIAL NOTE:THIS SOFTWARE IS NOT PERMITTED TO BE MODIFIED OR SOLD SOLELY AT
** ANY TIME AND UNDER ANY CIRCUMSTANCES, EXCEPT WITH THE WRITTEN PERMISSION OF
** KINGSOFT OFFICE
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
** AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
** IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
** ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
** LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
** CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
** SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
** INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
** CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
** ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
** POSSIBILITY OF SUCH DAMAGE.
**/
#ifndef __INCLUDE_MSO_ENUM_CHART_H__
#define __INCLUDE_MSO_ENUM_CHART_H__

typedef 
enum XlChartType
    {	xlColumnClustered	= 51,
	xlColumnStacked	= 52,
	xlColumnStacked100	= 53,
	xl3DColumnClustered	= 54,
	xl3DColumnStacked	= 55,
	xl3DColumnStacked100	= 56,
	xlBarClustered	= 57,
	xlBarStacked	= 58,
	xlBarStacked100	= 59,
	xl3DBarClustered	= 60,
	xl3DBarStacked	= 61,
	xl3DBarStacked100	= 62,
	xlLineStacked	= 63,
	xlLineStacked100	= 64,
	xlLineMarkers	= 65,
	xlLineMarkersStacked	= 66,
	xlLineMarkersStacked100	= 67,
	xlPieOfPie	= 68,
	xlPieExploded	= 69,
	xl3DPieExploded	= 70,
	xlBarOfPie	= 71,
	xlXYScatterSmooth	= 72,
	xlXYScatterSmoothNoMarkers	= 73,
	xlXYScatterLines	= 74,
	xlXYScatterLinesNoMarkers	= 75,
	xlAreaStacked	= 76,
	xlAreaStacked100	= 77,
	xl3DAreaStacked	= 78,
	xl3DAreaStacked100	= 79,
	xlDoughnutExploded	= 80,
	xlRadarMarkers	= 81,
	xlRadarFilled	= 82,
	xlSurface	= 83,
	xlSurfaceWireframe	= 84,
	xlSurfaceTopView	= 85,
	xlSurfaceTopViewWireframe	= 86,
	xlBubble	= 15,
	xlBubble3DEffect	= 87,
	xlStockHLC	= 88,
	xlStockOHLC	= 89,
	xlStockVHLC	= 90,
	xlStockVOHLC	= 91,
	xlCylinderColClustered	= 92,
	xlCylinderColStacked	= 93,
	xlCylinderColStacked100	= 94,
	xlCylinderBarClustered	= 95,
	xlCylinderBarStacked	= 96,
	xlCylinderBarStacked100	= 97,
	xlCylinderCol	= 98,
	xlConeColClustered	= 99,
	xlConeColStacked	= 100,
	xlConeColStacked100	= 101,
	xlConeBarClustered	= 102,
	xlConeBarStacked	= 103,
	xlConeBarStacked100	= 104,
	xlConeCol	= 105,
	xlPyramidColClustered	= 106,
	xlPyramidColStacked	= 107,
	xlPyramidColStacked100	= 108,
	xlPyramidBarClustered	= 109,
	xlPyramidBarStacked	= 110,
	xlPyramidBarStacked100	= 111,
	xlPyramidCol	= 112,
	xl3DColumn	= -4100,
	xlLine	= 4,
	xl3DLine	= -4101,
	xl3DPie	= -4102,
	xlPie	= 5,
	xlXYScatter	= -4169,
	xl3DArea	= -4098,
	xlArea	= 1,
	xlDoughnut	= -4120,
	xlRadar	= -4151,
	xlCombo	= -4152,
	xlComboColumnClusteredLine	= 113,
	xlComboColumnClusteredLineSecondaryAxis	= 114,
	xlComboAreaStackedColumnClustered	= 115,
	xlOtherCombinations	= 116,
	xlSuggestedChart	= -2
    } 	XlChartType;
    
#endif /* __INCLUDE_MSO_ENUM_CHART_H__ */
