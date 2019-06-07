PP_colorC = ppEffectCreate ["ColorCorrections",1500];
PP_colorC ppEffectEnable true;
PP_colorC ppEffectAdjust [1.02,1.3,0,[0.33,0,-1,0.06],[1,1,1,1],[0.33,0.33,0.33,0],[0,0,0,0,0,0,4]];
PP_colorC ppEffectCommit 0;
PP_film = ppEffectCreate ["FilmGrain",2000];
PP_film ppEffectEnable true;
PP_film ppEffectAdjust [0.46,1.08,1.04,0.5,0.5,true];
PP_film ppEffectCommit 0;
// Date YYYY-MM-DD-HH-MM: [2019,8,13,0,28]. Overcast: 0.233232. Fog: 0.0595517. Fog params: [0.0513839,0.014,0]
// GF PostProcess Editor parameters: Copy the following line to clipboard and click Import in the editor.
//[[false,100,[0.05,0.05,0.3,0.3]],[false,200,[-0.01,0.01,true]],[false,300,[1,0.2,0.2,1,1,1,1,0.05,0.01,0.05,0.01,0.1,0.1,0.2,0.2]],[true,1500,[1.02,1.3,0,[0.33,0,-1,0.06],[1,1,1,1],[0.33,0.33,0.33,0],[0,0,0,0,0,0,4]]],[false,500,[1]],[true,2000,[0.46,1.08,1.04,0.5,0.5,true]],[false,2500,[1,1,1]]]
