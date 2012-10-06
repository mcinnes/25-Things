//
//  BusinessService.m
//  BizAppTutorial
//
//  Created by Tope on 03/02/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BusinessService.h"

@implementation BusinessService


@synthesize caption, image, webContent, webContentTitle, webContentImage;

-(id)initWithCaption:(NSString*)theCaption andImage:(UIImage*)theImage andWebContentTitle:(NSString*)theTitle andWebContent:(NSString*)theWebContent andWebContentImage:(UIImage*)theWebImage andMap:(NSString*)theMap andCall:(NSString*)theCall andSite:(NSString*)theSite

{
    self = [super init];
    
    if(self)
    {
        self.caption= theCaption;
        self.image = theImage;
        self.webContent = theWebContent;
        self.webContentTitle = theTitle;
        self.webContentImage = theWebImage;
        self.map = theMap;
        self.call = theCall;
        self.site = theSite;


    }
    
    return self;
}


+(NSArray*)getSampleData
{
    
    
       
    BusinessService* service1 = [[BusinessService alloc] initWithCaption:@"City Tram" andImage:[UIImage imageNamed:@"city circle.jpeg"] andWebContentTitle:@"Melbourne City Circle Tram" andWebContent:@"Circles the city along Flinders St, Spring St, La Trobe St and Harbour Esplanade. Free trams leave every 10 minutes." andWebContentImage:[UIImage imageNamed:@"city circle.jpeg.jpg"] andMap:@"https://maps.google.com/maps?q=flinders+street+melbourne" andCall:@"" andSite:@""];
    
    /* BusinessService* service2 = [[BusinessService alloc] initWithCaption:@"Scienceworks" andImage:[UIImage imageNamed:@"scienceworks.jpeg"] andWebContentTitle:@"Scienceworks" andWebContent:@"Lot's of interactive displays and exhibits." andWebContentImage:[UIImage imageNamed:@"scienceworks.jpeg"] andMap:@"https://maps.google.com/maps?q=2 Booker Street, Spotswood VIC 3015" andCall:@"tel://9392 4800" andSite:@"museumvictoria.com.au/scienceworks/"]; */
    
    BusinessService* service3 = [[BusinessService alloc] initWithCaption:@"Police Museum" andImage:[UIImage imageNamed:@"police-museum.jpeg"] andWebContentTitle:@"Victoria Police Museum" andWebContent:@"Learn about Victoria's major crimes and disasters and see memorabilia including crime-scene photos and the armour of Kelly gang members Dan Kelly and Steve Hart."andWebContentImage:[UIImage imageNamed:@"police-museum.jpeg"] andMap:@"https://maps.google.com.au/maps?f=l&hl=en&geocode=&q=police+museum&near=melbourne&ie=UTF8&ll=-37.815412,144.960008&spn=0.015629,0.027037&t=h&z=15&iwloc=A&om=1" andCall:@"tel://9247 6666" andSite:@"http://www.police.vic.gov.au/content.asp?document_id=12561"];
    
    BusinessService* service4 = [[BusinessService alloc] initWithCaption:@"Great Ocean Walk" andImage:[UIImage imageNamed:@"great-ocean.jpeg"] andWebContentTitle:@"Great Ocean Walk" andWebContent:@"Walk all or part of this 104km trail from Apollo Bay to Glenample Homestead near the Twelve Apostles." andWebContentImage:[UIImage imageNamed:@"great-ocean.jpeg"] andMap:@"https://maps.google.com.au/maps/ms?ie=UTF8&t=p&oe=UTF8&msa=0&msid=205461016640637497660.0004bcac942fb23742191" andCall:@"" andSite:@"http://parkweb.vic.gov.au/explore/parks/great-otway-national-park/things-to-do/great-ocean-walk"];
    
     BusinessService* service5 = [[BusinessService alloc] initWithCaption:@"NGV" andImage:[UIImage imageNamed:@"ngv-logo.png"] andWebContentTitle:@"National Gallery of Victoria" andWebContent:@"Australia’s oldest public art museum and home to one of the country’s most important art collections with everything from Egyptian and Roman antiquities and Asian art, through to Renaissance, Baroque and everything up to and including contemporary art" andWebContentImage:[UIImage imageNamed:@"ngv-main.jpeg"] andMap:@"https://maps.google.com.au/?q=180 St Kilda Road" andCall:@"03 8620 2222" andSite:@"www.ngv.vic.gov.au"];
    
    BusinessService* service6 = [[BusinessService alloc] initWithCaption:@"RBG" andImage:[UIImage imageNamed:@"rbg-logo.png"] andWebContentTitle:@"Royal Botanic Gardens" andWebContent:@"35 hectares of extensively landscaped gardens near the centre of the city on the South Bank of the Yarra. They are widely regarded as the finest botanical gardens in Australia, and among the best in the world. Free guided walks or self-guided audio walks are available. Open daily from 7.30am-6pm April to October and until 7.30pm November to March" andWebContentImage:[UIImage imageNamed:@"rbg-main.jpeg"] andMap:@"https://maps.google.com.au/maps?f=q&source=s_q&hl=en&geocode=&q=Royal+Botanic+Gardens+Melbourne&sll=-25.335448,135.745076&sspn=54.815423,79.013672&ie=UTF8&hq=Royal+Botanic+Gardens&hnear=Royal+Botanic+Gardens,+Melbourne+VIC&ll=-37.828735,144.978375&spn=0.024134,0.038581&z=15" andCall:@"9252 2429" andSite:@"www.rbg.vic.gov.au"];
    
    BusinessService* service7 = [[BusinessService alloc] initWithCaption:@"Pertobe Playground" andImage:[UIImage imageNamed:@"pertobe.jpeg"] andWebContentTitle:@"Pertobe Adventure Playground" andWebContent:@"Lake Pertobe in Warrnambool has hectares of lawn, playground equipment, a maze, birds, flying fox, lake and walking track" andWebContentImage:[UIImage imageNamed:@"pertobe.jpeg"] andMap:@"https://maps.google.com.au/maps?q=Lake+Pertobe+Playground&ie=UTF-8&hl=en" andCall:@"" andSite:@"http://www.warrnambool.vic.gov.au/index.php?q=node/49"];
    
    
    return [NSArray arrayWithObjects:service1, service3, service4, service5, service6, service7, nil];
}

@end
