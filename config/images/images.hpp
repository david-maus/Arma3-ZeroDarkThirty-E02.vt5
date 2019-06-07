
class RscPicture
{
	type=0;

	access=0;

	idc=-1;

	style=48;

	colorBackground[]={0,0,0,0};

	colorText[]={1,1,1,1};

	font="PuristaMedium";

	text="";

	sizeEx=0;

};


	class introLogo

	{

			idd=-1;
			duration=1e+1000;

			movingEnable=0;
			name="introLogo";
			Controls[]={"introLogo"};
			class introLogo: RscPicture
			{

				idc=9999;

				colorBackground[]={0,0,0,0};

				colorText[]={1,1,1,1};

		  	  	text="media\images\introLogo01.jpg";

				style = 48 + 0x800; // ST_PICTURE + ST_KEEP_ASPECT_RATIO

				x=safezoneX;

		  	  	y=safezoneY;

		  	  	w=safezoneW;

		  	  	h=safezoneH;
			};



		};


		class Default

		{

				idd=-1;
				duration=1e+1000;
				movingEnable=0;
				name="Default";
				Controls[]={"Default"};
				class Default: RscPicture
				{

					idc=9999;

					colorBackground[]={0,0,0,0};

					colorText[]={1,1,1,1};

			  	  	text="";

					style = 48 + 0x800; // ST_PICTURE + ST_KEEP_ASPECT_RATIO

					x=safezoneX;

			  	  	y=safezoneY;

			  	  	w=safezoneW;

			  	  	h=safezoneH;
				};



			};
