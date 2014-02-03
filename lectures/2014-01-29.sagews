︠ba1de73c-33f7-48ba-ba20-441ee8da4dcci︠
%md
# January 29, 2014: Public-key Cryptography, part 2 (RSA)

 - whiteboard: <http://youtu.be/oLda6PVMpxw>
 - projector: <http://youtu.be/KkojthaCo5c>

**Approach:** we will focus on the core number-theoretic ideas behind public-key crypto for now, completely ignoring the nice infrastructure that must be added on top in order to make it pleasant to use and more secure.

︡87a07b9d-3280-4753-b126-71c8eb9c74da︡{"html":"<h1>January 29, 2014: Public-key Cryptography, part 2 (RSA)</h1>\n\n<ul>\n<li>whiteboard: <a href=\"http://youtu.be/oLda6PVMpxw\">http://youtu.be/oLda6PVMpxw</a></li>\n<li>projector: <a href=\"http://youtu.be/KkojthaCo5c\">http://youtu.be/KkojthaCo5c</a></li>\n</ul>\n\n<p><strong>Approach:</strong> we will focus on the core number-theoretic ideas behind public-key crypto for now, completely ignoring the nice infrastructure that must be added on top in order to make it pleasant to use and more secure.</p>\n"}︡
︠b5da1cb0-19e3-47d7-9b9b-eb9c34eb7f8fi︠
%md

## Whiteboard...

**(explain the theoretical idea behind RSA and how it works)**

︡3f78cd6c-0674-4338-854c-33d2f828b7d2︡{"html":"<h2>Whiteboard&#8230;</h2>\n\n<p><strong>(explain the theoretical idea behind RSA and how it works)</strong></p>\n"}︡
︠6dec4c09-25c3-49e0-83c6-7507a553e3d7︠

︡34642f11-696e-4544-9ec7-d041c345d76e︡
︠f438e821-7550-4556-b5a9-fc240c1670b2︠
rsa={}

@interact
def f(bits=128, go=button('Make another RSA cryptosystem', classes="btn-large btn-default fa fa-refresh")):
    b = bits//2
    print "Creating %s-bit RSA cryptosystem"%(2*b)
    p = ZZ(next_probable_prime(randrange(2^b,2^(b+1)-1)))
    q = ZZ(next_probable_prime(randrange(2^b,2^(b+1)-1)))
    n = p*q
    while True:
        try:
            e = ZZ(randrange(0,n-1))
            d = Mod(e,(p-1)*(q-1))^(-1)
            break
        except:
            pass
    print "\nPublic key:\n(e,n) =",(e,n)
    print "\nFull key:          = stored in a the global variable 'rsa'"
    global rsa
    rsa = {'e':e,'n':n,'d':d}
︡81e915cc-b64a-458b-8d45-181202eda14f︡{"interact":{"style":"None","flicker":false,"layout":[[["bits",12,null]],[["go",12,null]],[["",12,null]]],"id":"af216148-2db2-48d3-9114-470fb86c17c5","controls":[{"control_type":"input-box","default":128,"label":"bits","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"bits","type":null},{"control_type":"button","default":"Make another RSA cryptosystem","label":"go","width":null,"classes":"btn-large btn-default fa fa-refresh","var":"go","icon":null}]}}︡
︠589ce708-923e-462a-ba57-ced36bce13d0︠
my_rsa = dict(rsa)  # make a copy
︡1eb4dcb2-11b8-4250-9047-4c0f4c1ac2de︡
︠814f2ada-e473-400e-80bc-7af073bcd6fe︠
my_rsa['e']
︡8aa2cfb7-c4af-40fb-a269-5c1d61dab8e3︡{"stdout":"72330484215228990241330972840062122571271501977939996743994003855274295694604713315918131764490744949217940669683114885812798041107565486303594958745768475818278981025977437554876774701449630190717573708098578237531035873263229298105115724397081857311972480435661171323015414227686214012491894182072690790959909636427702211785827007260313370725161147033797043392873088469816114263115248646842187325796021210957070606131631274456032237675252996445220006841835412028409030741761313531167972455658817768528582707269904182377113035362511693190971572161612940268572171337514708685550714804842082492209841661521073675660803\n"}︡
︠3562f173-8cca-40c5-972d-e67aeccbe5fa︠
my_rsa['n']
︡4a5c1cb2-34db-40c8-9ad2-16d9a565a0e1︡{"stdout":"80587966154926772272218789712892350007614334669220796549905512753560571491138113672111968712776887847804550876973926832754164506531422013795934649064602484821930582521218528208863133176333819428002680561853960344609844317368667642425539942190563999754683870536014990267740249212184401932107887288182146166940513484689169921040024593749621060120178308392181203645586305267327481438807074429287808753487856631867518449138274480597005589545704408598434563572959793628711405174270093651053898676386178154571570610896096742980616443018306119071726041386335583413982253655806283301574614270146436794151933476669329675016417\n"}︡
︠6aaaf8c4-05b3-417c-9728-851130b71a85︠
Mod(480,my_rsa['n'])^my_rsa['e']
︡d3c7b99c-e0e3-4053-9ebb-037dac6c7806︡{"stdout":"13135518089016428773403319392223914075106173445405777581995153281519995058824368139997549698328520249570472463731009199502134688275193526087634969103980511438365617071121855399947507913858235981462630722467224723231199301959217346949044765590935758556174977423304309764819406577676599207499534675196436306198798723178176397728679165103770112206848574385097258190389727437570234773101851800085081176798272618112032663785760053851462153095808842818521752271809595284668824319894763004605204380176356664988309328073519219184322377913363463764638409289028648444276783089590184672365262955638888657277723253496075936665787\n"}︡
︠c008c5cd-0e1b-4e19-a7ad-7ac39f63afb6︠
Mod(13135518089016428773403319392223914075106173445405777581995153281519995058824368139997549698328520249570472463731009199502134688275193526087634969103980511438365617071121855399947507913858235981462630722467224723231199301959217346949044765590935758556174977423304309764819406577676599207499534675196436306198798723178176397728679165103770112206848574385097258190389727437570234773101851800085081176798272618112032663785760053851462153095808842818521752271809595284668824319894763004605204380176356664988309328073519219184322377913363463764638409289028648444276783089590184672365262955638888657277723253496075936665787,my_rsa['n'])^my_rsa['d']
︡ad41c826-a7a5-4877-9eb4-9de0b9d16e11︡{"stdout":"480\n"}︡
︠c42a8662-4bea-4072-8770-d008e13c780a︠
my_rsa['d']
︡0c4a3611-bef6-43de-b887-974a5f56bb80︡{"stdout":"21023521139220306871129829278676797772749012626544374685718569190642640284400201955744284942706342421462509468496141871619401842334612484830510038325657457712872276028516705015151280703978366837997358651137060054097782398137077965963499387622878196336263302976358785065432395892524551446850177363792734581396135883389319607376335173376873977262109760080632669596859149625150898958170395728658383892586161274868071846751115991001919864613597111390217284101370612287325393892602350573054736611381090947452798065014349696750181678058661450141594308143652931552727288684624360281371007401898363995819184045032893325475047\n"}︡
︠130cf00d-c240-4cd3-81c3-68baa63f8a19︠
t = my_rsa['e'] * my_rsa['d'] - 1
t
︡5b868df0-31ea-41ce-b639-5092c0fca170︡{"stdout":"0\n"}︡
︠741f78cd-e966-41b0-8373-e24bf43ac532︠
n = my_rsa['n']
︠5f50ddaf-9a3a-44a6-8462-31e3b6e2f755︠
parent(my_rsa['d'])
︡caa4cdf0-2e29-438b-983e-6d9bc26425e4︡{"stdout":"Ring of integers modulo 80587966154926772272218789712892350007614334669220796549905512753560571491138113672111968712776887847804550876973926832754164506531422013795934649064602484821930582521218528208863133176333819428002680561853960344609844317368667642425539942190563999754683870536014990267740249212184401932107887288182146166939934804110400337944288794696134033984124099275189021090055493751770033237936880179192161433568999569268199343950479108559425243784702099427252758867623512631180580267024482797930045378841258803412518501033970486017487353833751701780471694238393024273588909202565397885597039677492208651164137317950775717662996\n"}︡
︠dd93a2be-c2b0-4bd4-b222-fb2a7f185469︠
phin = 80587966154926772272218789712892350007614334669220796549905512753560571491138113672111968712776887847804550876973926832754164506531422013795934649064602484821930582521218528208863133176333819428002680561853960344609844317368667642425539942190563999754683870536014990267740249212184401932107887288182146166939934804110400337944288794696134033984124099275189021090055493751770033237936880179192161433568999569268199343950479108559425243784702099427252758867623512631180580267024482797930045378841258803412518501033970486017487353833751701780471694238393024273588909202565397885597039677492208651164137317950775717662996

p_plus_q = ZZ(n) + 1 - ZZ(phin)
p_times_q = ZZ(n)

R.<x> = ZZ[]
f = x^2 - (p_plus_q)*x + p_times_q

︡37d75224-1880-4636-a462-5bd9dc880e46︡
︠d82bd944-0865-450a-8207-d7655fe45ddb︠
p_plus_q
︡77f64f26-94c7-4fce-bf94-7ad411371457︡{"stdout":"578680578769583095735799053487026136054209116992182555530811515557448200870194250095647319918857062599319105187795372037580345761002309171181804705336280997530824907245610853123853297544919351159052109862126256963129089184554417291254347147942559140393344453240885415977574592654228142987796158718553957353423\n"}︡
︠7614fb08-b2e0-46c7-930c-b1d078c0f8df︠
f
︡7c3b0f81-b6a5-4437-9c83-80c0af352b0a︡{"stdout":"x^2 - 578680578769583095735799053487026136054209116992182555530811515557448200870194250095647319918857062599319105187795372037580345761002309171181804705336280997530824907245610853123853297544919351159052109862126256963129089184554417291254347147942559140393344453240885415977574592654228142987796158718553957353422*x + 80587966154926772272218789712892350007614334669220796549905512753560571491138113672111968712776887847804550876973926832754164506531422013795934649064602484821930582521218528208863133176333819428002680561853960344609844317368667642425539942190563999754683870536014990267740249212184401932107887288182146166940513484689169921040024593749621060120178308392181203645586305267327481438807074429287808753487856631867518449138274480597005589545704408598434563572959793628711405174270093651053898676386178154571570610896096742980616443018306119071726041386335583413982253655806283301574614270146436794151933476669329675016417\n"}︡
︠4e8aacd6-7487-425f-9bd2-7ef62e6de7c9︠
v = f.roots();
p = v[0][0]; q = v[1][0]
︡4cdf9db3-6d8c-4025-b002-590c8c1ce078︡
︠6d4d893b-07b8-4707-8aed-d0a7763223b6︠
p*q == n
︡e0bffc44-89e6-428d-8028-01246c449bac︡{"stdout":"True\n"}︡
︠b0f0db73-a1e1-4024-8ed5-fc4a9bde8839︠





︡28ad1bde-8795-4d7c-ad2f-ff8583b23316︡{"stdout":"x^2 + 80587966154926772272218789712892350007614334669220796549905512753560571491138113672111968712776887847804550876973926832754164506531422013795934649064602484821930582521218528208863133176333819428002680561853960344609844317368667642425539942190563999754683870536014990267740249212184401932107887288182146166939356123531630754848552995642647007848069890158196838534524682236212585037066685929096514113650142506668880238762683736521844898023699790256070954162287231633649755359778871944806192081296339452253466391171844229054358264649197284489217347090450465133195564749324512469619465084837980508176341159232221760309573*x + 80587966154926772272218789712892350007614334669220796549905512753560571491138113672111968712776887847804550876973926832754164506531422013795934649064602484821930582521218528208863133176333819428002680561853960344609844317368667642425539942190563999754683870536014990267740249212184401932107887288182146166940513484689169921040024593749621060120178308392181203645586305267327481438807074429287808753487856631867518449138274480597005589545704408598434563572959793628711405174270093651053898676386178154571570610896096742980616443018306119071726041386335583413982253655806283301574614270146436794151933476669329675016417\n"}︡
︠c8dd7db0-3eba-443d-b03e-de024e3c5a46︠

︠3aa338b1-28d4-41c5-9022-085e3c2aa10e︠

︠7d43fe90-355b-40fe-84df-606c83dc36c0︠
v = f.roots(x, ring=RealField(50000)); v[1]
︡886fff5d-3bc1-49ad-ab40-6568395d073d︡{"stdout":"(-1.00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001436146378622077348332696846410613856460776607130125720693675732223235349944850296380392478407693802959434360006415200480257388897561485810120372271239583102643818338495848739696582603153977876923734854480568872788543769223590720789550701316582838964636540735355295867437222496895138725059303743911025351318083777840325946600510010753950524333467293971950408115883463011410653639295341333728400892013700324920564057686907272795377700495813896827307383287265656087872821034022285685621421348896536634475287210675138141613335433105759234005069540664108844341443944625436672182689257074620538572093857699391110392965037295103436479816234081157995166474719385281692089903950667184972342641589115415357170253569726865719794178784719086402108103828803009152849652494630741148483021375249713456038098363906680095309393180150661751264533747475468915436157342095764846305721634978159328159205511511089877371671916611904574750874418938761842448559387169829101027515392937292894248328283746395588270032272421819874377127747436948066047085506622085819587531733132236864595535861798381668501768776691933169821871394590245498489885724429487034411339904344786150176617140914722142569515841491325931760199383012661030408756355704581899855457420691098524024317389214953877950006822654280436985251342291265222087990874400736417856831318483014522555311898511798945066761754446749450390685475474013331833142519283615537376817798367670107932952733667125689992618723155471429393139173553062752256059484662766903435010553434955017724427713446820134235310679090934218269681982267599258276214406353403842287077965212350292829391811355672442554889396580317288256907132474043765789503849041529706677885032023585447434808555039303808978036348551269111494578375489152723641437229243117143591383774481433113018385598489614017842332897311280682520222938709133019270480004446250302435627385035489872103967133842534409565595229998372605857379148539001543356437710142968295383184960316085801508235723101638993728228346343825807933088573993251890818618611039292248885524608850185848815674404561697873508970346747043842417236512873874671271250106228018547281675918754568013938369257914591013740970490624459356441243977820744056592585952810687688771706828567100486717736138713566552215558745894209990146843519968005857688549726657263997899950455266605572168352281061681929857150036574791740062172918035748541497330058234638785769156588623991808707112638142214115870678640765752954360629603555478314812558939300413281708215223547820832754468839090181771872355339510998289839103925141931490361696581897077313769115948577934298982412309470170941049980813134847844789638199286074536793454076460285061104779334249489362902124842217653990171934525611529226845719327123167482381217918719427403954912829128905882014349574524396445866379679075998814054042244876976470641374305407619903350339728724411761254636803421854442019398284154778341037860334278712175553213774774445407434793612454999757749807939692712231587830725937462563016253877599055201571440823530092107944321163222751930853121278523054548151030367861177310896434265707939763902689624444726957897630114130622508720083534354471666867814984501676893615000486829042931420688724549537736346975667177009414309610985597154472003540682362086623221645952652176024925956768804086919814206529631231471506767188076335340650697004658630445639231199462775009450527698960608509439310675355635286548066406058035013747285812175233731455886651280130474942270623118100035907666841580626397341726901189182077456700616799410982870068884862973552546175872430545775027576279891698412689923357626769732176273545756663415003270895439020062702202988395121365179679816174616433954053403505166565269336955054925133763694472540295870372898224052232510051382719487789073519174063170731191305981596872762643132280544788835304046404360330969495311141931396921472225315352798184075113728299738789515543228618477241260853960636795503121673408970262779557893325258489039712382765702087681081833728876618737892668349893748664177900902663289907907405938133736577819970356338563400695773228855397931665124489001613304529909976643089233822629676170967413817465976315216940239786758896026161138379939346275059350959529005363092990252036319175674704274413718189179490776441308882466115403460354459456608386618705589129339534328189781301727611350916027863304319773365557555710153294546551831911643364009288533908314149133068716872825693090474591040292724414582878224447950837286986126153718166922997710197545195471571431373691526403260671033467239600776357604946377421410488777125044624574917710407168902306005095418406298128823327768546821373080866536105429518448894460773148350940474431857936556368987545109870014751504735229505556225906924292126541654785157277761232783268649990661079432953347679071374063023085246115255815165733313881646441762889950557019964715308294094535681991904674434948165784550776311955933443327907064622564222485062677079759149941648851358619798654675358386937545458545229235614226418713471421998240615231119193005438502382533433524073455005885956364189077192166606527177613764470818114611720594927133130231606357638594191284661023891298944321075391019934681338650829404559002490099933297870025158223806632411576366313971951918415880172625648817685060374066984420237028106881247517950133584521739812133891541659958006958813283176345761953256410879938024822191454360436097078679738076192017576268459375606667020041408985910012560779965147373477342489591306331502748447520351746633329830770346170277386810532912683906034077883980701582991222710939202366359832545496233994928704490725577836533429514606602382254497368972951482556257228342348402513578422123897477543803295097139549505015571449560738989549409299403736054591060685237273611017413969979474999877863289235330041153846213294947468429952086950810952089351736336313733493511322138946922174557558917337764848385703855897076908432711934238313411809678059086767456739626187841699369823582011847004002026828300898694704599637773596665375025338879322485905922276877549571111463348152764935096234335967994262308958007184029466318964301194819173380460510505604160058628983662721970260400520212350645279884300778213975821159132072211258140960283727620453508488656614747831309773189135776333095242148787144811071141863939056716643282231724939937649744214836109102400319463814212724465803294351351343091164211778485422611760955938843685738349319647814744123457191948230045019039316182667822872854193343030059378989050067801940716972623800699900446448119489605585194533420708352450318845492889103199670112201952157357207216059556417494040486826049208743646649855487130737308170953723237266463028889145333660648050937581244436525524293037101696356577669444607735930255496228470430382741000028039543582873587600122070459391915482953804700339131605906602952038299038617990439288250268850292032334797659660896884105080182754400647053083858924518457757941338441594322956160206243011518778037211350312284658528899868809180741160039749221639490740506747196351802768931136941004507238901323831520245343840216404045238751926063800601391379509931690237581306017808850280657245763719811139911082996270800779888725621894622767458777614755791667995566890659916483234350276188028709566141604923361337893794767596261781549589531955753243240640701684167185995562466078323602648087213902324243016331561531264344303765039569058687273822654740638345213232625146276372248818069320299285142738773086659762446066394649257075953999441152603299045401005932174940970421946139843011446261345017936405836044035672204816892005595423041054213066724671386261723144340409318608463121956262205787690335591292414475539700165202640415989326859693627536435443657031078570142924571154977673332858844206272384929114293062078803989598420821026837198755562345707921297760880788706654146987567974931679704117195737953424736582755775099027359650129215833687100930406175708793146861199603280382066123009620524702704964681248325531101356300411070733051868072505996149845001086963838434794565106546797473810146769516452651186452583543041743247521016327429513217038829179136779092819521066229685694684168429782797793467837460371737444362188246333502275924142708703649530069437887092517745434120280219788155454900716021076921845956942963890452044129864726471153970822386672876518681161318171808249358628937607458785864065412310678398669085402602676097274277472620673054467364100396715659531647903173057583185586637524837080817770970183862957828380662901386157265054413105399549221170805696677328637113646528701089102430855642750694149174661679450926738100466682987597742913708328423972579261464743255697075439277571604309729062962698577460110617222418569376065289122328693009187658018071858467548634236102069849945393611047352191878680749350083036262014669112356378415623180654098016592002485082554234426738116189651984081753039964550148203673821654975370757901036281981876903581206599636314637295067572303236892469249940875567003246481247945371153118000287262230131102697555561351662821948663569710706540265997033892113205061710144784291212626590504775572373304589999189326755568157619909821723568543537497057804711448942004213536524240824812813786593656953338659851676357088209189137335418221011998660418288582355873678805666576779654399370420760841494488222004084510532823268632670748508655283912724846287207568685727934677215799007662596503537668348842698678746119977239152410851131232587471545698371988840910054229770338766339782736924665423870831763807146949120050677045518753179672315335204416473465129487922813386912245355192678081188523850144199637491127292448873902807934052142006247571780676413263298807978685855135830532122117110570101944171175418823251834442888453248217303000782187598221933185896544199833490713713101685085236391124150755041559032625856621824578374494350209897359279709065490681077088361642232820648089220775221861191462547162192279361416852897493455324266404795028566058823318824391428772120560552562744786679886576368035317957338886485688485175675777049228413457016392969199945893373492753045437650890518762998177519642364111910521532489726866941004512369300334095570651866778150187185810995274861537493752877898754818477988243190171902575354892311990227700079674623313613793968678694584797280023523892662065687480448434607690090907106989461393740214959725900061489833000451439637331199753582327651165808545940594864500328047488494306357255262136460971893472226524646497520292233041077522874863757309242055061162246943024045597855923114096802957661205339073730103050080392977488741171603174179275827982602361564464516849726928640107777021945916021355746532170818198158889419907275825136142400073351508885420210680215261953600612052227932729336256722324688834958649666996996503900692605778434761424994222267146932109952724035229611255438537821385987775049726902114809801836247188006977463047656721195500874171015383609217781243086310691137240767675208155095068103041944213053154332176876333466657080411998722909844209916988376777434081708468013826107913711060217802470928610224482600440241213723812917449221825051785153466258904710966760241824452145179811517739050179648356143385785013176227565185637788905345705909888906284406034989889076547876324205623832535874144176817116523496999272212476167609042265587269722878260335323414307834318661416467458074823783950027016035933540855670851069945250509203447060168527243084854344941811963049991207777983203963587531499979375339020481587045745765928068886930801029582791230812565417449395650991770441298870728836619023409828400689223005420620699454030080609000538106238185425992436816355730466641104377302179774247339516372898095228311950454723117830754886201734381190502750560436135199559080406776081138047617754172927226864400594728465341618571448230933232478915114945227360586720336663821617040235604025444885059658778000077767332946189616269730654048809124622485153575996426207965896400158946285794147251986608689305690109331102175442647690178479256194718608960671705468012399167388445321041950858538222805911721706040706616735888960037969938337620793286304560790282618915302710521233973934923478058639604568764656339068181876282669782557081020026401330388898044301156849347950691322331415582049535176600505740433815720586034858405422821814161471771368911364431876143715543486487885013428353340776071671566945141059940037489853330663883567756481174074348206025427476416449731501512737363915457147995991330784285260427010424844956978707153183860046720495442242522325621577705385781085957699948865842311130451891323937284287964098523126449925350011085560338587786765061300876587780509169633393663801332651381091193947710284496490348152724224572532587134853651735972329829261906136126249118728738308292370164369127519020905141858202208209007162344640483862987848553687365597392794863787956875095743045190736685348747883551218562177915875837184835251562644745849508152039140612248567048637710883506470983989261095520678737819008694214484311874103769121477685808250519649871713394466140850590790095382250670548204942818549450364411180640784898462991663238650911039359737542539622864480277485222926366922814200680967334247278921690409922245987516685193343832307121349205039469295915700416619237019891534631842212853650655215278680813018122615098269412467608923437555401942863179642749590169197758958355956496853741703161890059995344637742359392480925442252471895722388135532666074000680340643993753880002988539712633485528974052123077263889613595596712186793410918509975207093287160494117019577246468076871318805022992871559380098513421199122180610767758836594683071596111669458862630624687118299704691755516443050620574993100310179158568579500446513298796899293495510857786395010375371160602764399265022756362967338718394057889219176907689541820612397324780746428315116877801274617913817257296877359366060892131616008463718558038514000359669593939538088598468828720490581028115768878084627703672783935501756605632231720442610415517711084956313575966305579845667735134209069711666559931165699722108422910205742542684677197745984217499068715939293633712701808423522320557718308372131314769859289722746037927376403618200138047305424398426942682980824955114975447812224490769090101979593587631545834670587998072005257157599808653916535586957391315190999450293954231611932585726807151242676213478717376475106906825502930581196643564969827612303124232566937723641402275185325743719023345297865351565448141458154997104693537315273269229235328567722557857808602866119578893546928848632700198690344497089131960574560220261086179665184048248614361061797513818849021863170911813997818951216263526949017081758411268772833613444277215269690057153142862869701690269218338939720321572104521231551892145973396528417983216815239003333939036727501842999060404246825768900242656368744, 1)"}︡{"stdout":"\n"}︡
︠f5f67a39-b15d-41e9-9ef5-d5b18d3de6bf︠
f(-1)
︡11cdb51d-4f9f-485e-ba2e-cba4a34ebb87︡{"stdout":"1157361157539166191471598106974052272108418233984365111061623031114896401740388500191294639837714125198638210375590744075160691522004618342363609410672561995061649814491221706247706595089838702318104219724252513926258178369108834582508694295885118280786688906481770831955149185308456285975592317437107914706845\n"}︡{"stderr":"/projects/d6df9d1b-2462-4aa2-91e0-995610ea1726/.sagemathcloud/sage_server.py:680: DeprecationWarning: Substitution using function-call syntax and unnamed arguments is deprecated and will be removed from a future release of Sage; you can use named arguments instead, like EXPR(x=..., y=...)\nSee http://trac.sagemath.org/5930 for details.\n  exec compile(block+'\\n', '', 'single') in namespace, locals\n"}︡
︠7b9b3acf-8f49-4de1-b3c8-92e704c7bd72︠

︠c7451a88-85ef-4461-9025-3416fba463b8︠

︡680323a0-ab8a-4743-a9ab-be1aec710709︡{"html":"<h2>A live demo with somebody in the class&#8230;</h2>\n\n<h3>Part 1: receive a message</h3>\n\n<ul>\n<li><p>I will put an $e$ and an $n$ into a chat.</p></li>\n<li><p>Then wait for a number back.</p></li>\n<li><p>Then we will decrypt the number.</p></li>\n</ul>\n"}︡
︠fc4637c8-113e-4828-a71d-98538066dbc5︠

︡c6081f08-88b8-429b-bd03-263fb427aa91︡
︠bf346b69-5026-4b2b-b3d1-6bf0a681c3ce︠


︡8edce570-fea4-4397-8d40-d5d3f68424e5︡
︠7d68ebfb-d9d6-4048-b7fc-25adf054e0ffi︠
%md

### Part 2: send a message

- Student will make up an $e$ and an $n$ and paste them into a chat.

- Then we will encrypt message to student.

- Student will decrypt it.

︡c5cb64c1-9ac8-4de6-bceb-a979c15672ff︡{"html":"<h3>Part 2: send a message</h3>\n\n<ul>\n<li><p>Student will make up an $e$ and an $n$ and paste them into a chat.</p></li>\n<li><p>Then we will encrypt message to student.</p></li>\n<li><p>Student will decrypt it.</p></li>\n</ul>\n"}︡
︠403b991d-bd11-4b8b-92b3-96b7eec08b49︠


︡bd5ac49d-4375-4f4e-874d-92dbd10adfa8︡
︠d504562a-8c66-4d10-a6e6-59fa26428865︠



︡56f44e27-3ece-4053-8c7b-389576cb5259︡
︠03096d94-11c7-4a38-b531-ddc135dd3ae8i︠
%md

### Part 3: sign a message

- Student will make up a message

- Student will encrypt message with their *decryption* key.

- Send it.   We will verify the signature.









︡879aa6ce-1c12-47a6-8a55-250237cd9f93︡{"html":"<h3>Part 3: sign a message</h3>\n\n<ul>\n<li><p>Student will make up a message</p></li>\n<li><p>Student will encrypt message with their <em>decryption</em> key.</p></li>\n<li><p>Send it.   We will verify the signature.</p></li>\n</ul>\n"}︡
︠b8120e93-414a-4b1f-99df-7526eaabe6c5︠

︡e3334059-4430-4ce3-b200-9a90f835c09c︡
︠146f72ed-3b26-4567-82bb-211c4c56747f︠

︡7d2ad1b9-4193-4f88-800d-34d1600295ab︡
︠b44b6e97-1a3e-42d9-9a21-2a9b9e0174df︠

︡701e2cc9-c28c-4988-b753-61c1dae034a3︡
︠c1d153ed-3988-4140-b459-e5b125b0bd0c︠

︡fb480606-7df5-4fb8-82c7-442d4b88424e︡
︠cf1de8c9-cb90-4262-9274-0f174e9459ffi︠
%md

## Crazy project idea -- crypto is a pain to use for communication, so make it easy!?

Create a small javascript library that a person can embed in a webpage, which provides a little textbox for "encrypting a message to you" in it.   So, e.g., I could put it at http://wstein.org, and then even my mom could easily encrypt a message to me.   She would type the message into a box, then click "encrypt" (or maybe even it would encrypt as you type), then take the output and paste it into an email to me.

The configuration for the javascript library would *only* include the public part of the key $(n,e)$ and nothing else, so there are no security risks due to that.  The main problem with this is that the person sending the message has to trust the website that contains the public key.

Note that the message *never* gets sent over the internet before encryption -- it stays in the browser.

There are many existing libraries written in Javascript that basically solve this problem, e.g., <http://www-cs-students.stanford.edu/~tjw/jsbn/>; so you don't have to worry about actually implementing big integer arithmetic, etc.   This would be more a matter of making something look pretty and friendly... and EASY.
︡986a7e7d-e33a-404b-83d5-a8a07f9f2de9︡{"html":"<h2>Crazy project idea &#8211; crypto is a pain to use for communication, so make it easy!?</h2>\n\n<p>Create a small javascript library that a person can embed in a webpage, which provides a little textbox for &#8220;encrypting a message to you&#8221; in it.   So, e.g., I could put it at http://wstein.org, and then even my mom could easily encrypt a message to me.   She would type the message into a box, then click &#8220;encrypt&#8221; (or maybe even it would encrypt as you type), then take the output and paste it into an email to me.</p>\n\n<p>The configuration for the javascript library would <em>only</em> include the public part of the key $(n,e)$ and nothing else, so there are no security risks due to that.  The main problem with this is that the person sending the message has to trust the website that contains the public key.</p>\n\n<p>Note that the message <em>never</em> gets sent over the internet before encryption &#8211; it stays in the browser.</p>\n\n<p>There are many existing libraries written in Javascript that basically solve this problem, e.g., <a href=\"http://www-cs-students.stanford.edu/~tjw/jsbn/\">http://www-cs-students.stanford.edu/~tjw/jsbn/</a>; so you don&#8217;t have to worry about actually implementing big integer arithmetic, etc.   This would be more a matter of making something look pretty and friendly&#8230; and EASY.</p>\n"}︡
︠fb3e53c1-b1a1-44e7-8a59-6fc9627e6fc2︠
︡2b1fc8c9-e829-412b-b813-bb8b3e65aee2︡
︠03ba0813-4d3e-4311-a412-71c36479ddd4︠








