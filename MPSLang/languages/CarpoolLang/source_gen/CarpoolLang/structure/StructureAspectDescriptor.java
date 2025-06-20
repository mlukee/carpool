package CarpoolLang.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BaseStructureAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.runtime.EnumerationDescriptor;
import java.util.Collection;
import java.util.Arrays;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import jetbrains.mps.smodel.runtime.DataTypeDescriptor;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.runtime.impl.ConceptDescriptorBuilder2;
import jetbrains.mps.smodel.adapter.ids.PrimitiveTypeId;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;

public class StructureAspectDescriptor extends BaseStructureAspectDescriptor {
  /*package*/ final ConceptDescriptor myConceptAppApiEndpoints = createDescriptorForAppApiEndpoints();
  /*package*/ final ConceptDescriptor myConceptAppComponents = createDescriptorForAppComponents();
  /*package*/ final ConceptDescriptor myConceptAppMenuItems = createDescriptorForAppMenuItems();
  /*package*/ final ConceptDescriptor myConceptAppRender = createDescriptorForAppRender();
  /*package*/ final ConceptDescriptor myConceptButton = createDescriptorForButton();
  /*package*/ final ConceptDescriptor myConceptButtonIcon = createDescriptorForButtonIcon();
  /*package*/ final ConceptDescriptor myConceptButtonLink = createDescriptorForButtonLink();
  /*package*/ final ConceptDescriptor myConceptCardContent = createDescriptorForCardContent();
  /*package*/ final ConceptDescriptor myConceptCardTitle = createDescriptorForCardTitle();
  /*package*/ final ConceptDescriptor myConceptCarpoolNotation = createDescriptorForCarpoolNotation();
  /*package*/ final ConceptDescriptor myConceptChildRender = createDescriptorForChildRender();
  /*package*/ final ConceptDescriptor myConceptFormInput = createDescriptorForFormInput();
  /*package*/ final ConceptDescriptor myConceptRenderButtons = createDescriptorForRenderButtons();
  /*package*/ final ConceptDescriptor myConceptRenderCard = createDescriptorForRenderCard();
  /*package*/ final ConceptDescriptor myConceptRenderForm = createDescriptorForRenderForm();
  /*package*/ final ConceptDescriptor myConceptRenderHeading = createDescriptorForRenderHeading();
  /*package*/ final ConceptDescriptor myConceptRenderTable = createDescriptorForRenderTable();
  /*package*/ final ConceptDescriptor myConceptRenderTabs = createDescriptorForRenderTabs();
  /*package*/ final ConceptDescriptor myConceptRenderText = createDescriptorForRenderText();
  /*package*/ final ConceptDescriptor myConceptTableCell = createDescriptorForTableCell();
  /*package*/ final ConceptDescriptor myConceptTableHeading = createDescriptorForTableHeading();
  /*package*/ final ConceptDescriptor myConceptTableRow = createDescriptorForTableRow();
  /*package*/ final ConceptDescriptor myConceptTableTitle = createDescriptorForTableTitle();
  /*package*/ final ConceptDescriptor myConceptTabsContent = createDescriptorForTabsContent();
  /*package*/ final ConceptDescriptor myConceptTabsList = createDescriptorForTabsList();
  /*package*/ final ConceptDescriptor myConceptTabsListRow = createDescriptorForTabsListRow();
  /*package*/ final EnumerationDescriptor myEnumerationHttpMethod = new EnumerationDescriptor_HttpMethod();
  /*package*/ final EnumerationDescriptor myEnumerationInputType = new EnumerationDescriptor_InputType();
  private final LanguageConceptSwitch myIndexSwitch;

  public StructureAspectDescriptor() {
    myIndexSwitch = new LanguageConceptSwitch();
  }


  @Override
  public void reportDependencies(jetbrains.mps.smodel.runtime.StructureAspectDescriptor.Dependencies deps) {
    deps.extendedLanguage(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, "jetbrains.mps.lang.core");
  }

  @Override
  public Collection<ConceptDescriptor> getDescriptors() {
    return Arrays.asList(myConceptAppApiEndpoints, myConceptAppComponents, myConceptAppMenuItems, myConceptAppRender, myConceptButton, myConceptButtonIcon, myConceptButtonLink, myConceptCardContent, myConceptCardTitle, myConceptCarpoolNotation, myConceptChildRender, myConceptFormInput, myConceptRenderButtons, myConceptRenderCard, myConceptRenderForm, myConceptRenderHeading, myConceptRenderTable, myConceptRenderTabs, myConceptRenderText, myConceptTableCell, myConceptTableHeading, myConceptTableRow, myConceptTableTitle, myConceptTabsContent, myConceptTabsList, myConceptTabsListRow);
  }

  @Override
  @Nullable
  public ConceptDescriptor getDescriptor(SConceptId id) {
    switch (myIndexSwitch.index(id)) {
      case LanguageConceptSwitch.AppApiEndpoints:
        return myConceptAppApiEndpoints;
      case LanguageConceptSwitch.AppComponents:
        return myConceptAppComponents;
      case LanguageConceptSwitch.AppMenuItems:
        return myConceptAppMenuItems;
      case LanguageConceptSwitch.AppRender:
        return myConceptAppRender;
      case LanguageConceptSwitch.Button:
        return myConceptButton;
      case LanguageConceptSwitch.ButtonIcon:
        return myConceptButtonIcon;
      case LanguageConceptSwitch.ButtonLink:
        return myConceptButtonLink;
      case LanguageConceptSwitch.CardContent:
        return myConceptCardContent;
      case LanguageConceptSwitch.CardTitle:
        return myConceptCardTitle;
      case LanguageConceptSwitch.CarpoolNotation:
        return myConceptCarpoolNotation;
      case LanguageConceptSwitch.ChildRender:
        return myConceptChildRender;
      case LanguageConceptSwitch.FormInput:
        return myConceptFormInput;
      case LanguageConceptSwitch.RenderButtons:
        return myConceptRenderButtons;
      case LanguageConceptSwitch.RenderCard:
        return myConceptRenderCard;
      case LanguageConceptSwitch.RenderForm:
        return myConceptRenderForm;
      case LanguageConceptSwitch.RenderHeading:
        return myConceptRenderHeading;
      case LanguageConceptSwitch.RenderTable:
        return myConceptRenderTable;
      case LanguageConceptSwitch.RenderTabs:
        return myConceptRenderTabs;
      case LanguageConceptSwitch.RenderText:
        return myConceptRenderText;
      case LanguageConceptSwitch.TableCell:
        return myConceptTableCell;
      case LanguageConceptSwitch.TableHeading:
        return myConceptTableHeading;
      case LanguageConceptSwitch.TableRow:
        return myConceptTableRow;
      case LanguageConceptSwitch.TableTitle:
        return myConceptTableTitle;
      case LanguageConceptSwitch.TabsContent:
        return myConceptTabsContent;
      case LanguageConceptSwitch.TabsList:
        return myConceptTabsList;
      case LanguageConceptSwitch.TabsListRow:
        return myConceptTabsListRow;
      default:
        return null;
    }
  }

  @Override
  public Collection<DataTypeDescriptor> getDataTypeDescriptors() {
    return Arrays.asList(myEnumerationHttpMethod, myEnumerationInputType);
  }

  /*package*/ int internalIndex(SAbstractConcept c) {
    return myIndexSwitch.index(c);
  }

  private static ConceptDescriptor createDescriptorForAppApiEndpoints() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "AppApiEndpoints", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa017407L);
    b.class_(false, false, false);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/7076342757639418887");
    b.version(3);
    b.property("apiEndpointName", 0x6234383efa017409L).type(PrimitiveTypeId.STRING).origin("7076342757639418889").done();
    b.property("url", 0x6234383efa01741dL).type(PrimitiveTypeId.STRING).origin("7076342757639418909").done();
    b.property("method", 0x6234383efa017442L).type(MetaIdFactory.dataTypeId(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x58d9188ac922ce14L)).origin("7076342757639418946").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForAppComponents() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "AppComponents", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa002bb6L);
    b.class_(false, false, false);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/7076342757639334838");
    b.version(3);
    b.property("componentName", 0x6234383efa002bb8L).type(PrimitiveTypeId.STRING).origin("7076342757639334840").done();
    b.property("url", 0x6234383efa002bb9L).type(PrimitiveTypeId.STRING).origin("7076342757639334841").done();
    b.property("authentication", 0x6234383efa002bbaL).type(PrimitiveTypeId.STRING).origin("7076342757639334842").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForAppMenuItems() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "AppMenuItems", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383ef9fbeb21L);
    b.class_(false, false, false);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/7076342757639056161");
    b.version(3);
    b.property("label", 0x6234383ef9fbeb23L).type(PrimitiveTypeId.STRING).origin("7076342757639056163").done();
    b.property("component", 0x6234383ef9fbeb24L).type(PrimitiveTypeId.STRING).origin("7076342757639056164").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForAppRender() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "AppRender", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa05b791L);
    b.class_(false, false, false);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/7076342757639698321");
    b.version(3);
    b.associate("componentName", 0x6234383efa05b794L).target(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa002bb6L).optional(false).origin("7076342757639698324").done();
    b.aggregate("listOfChildRenders", 0x15c1251b5404ad15L).target(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x15c1251b5404ad14L).optional(true).ordered(true).multiple(true).origin("1567574944605580565").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForButton() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "Button", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa16de2bL);
    b.class_(false, false, false);
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/7076342757640822315");
    b.version(3);
    b.property("label", 0x6234383efa16de2dL).type(PrimitiveTypeId.STRING).origin("7076342757640822317").done();
    b.aggregate("href", 0x74d571161a9772fcL).target(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x74d571161a9772ecL).optional(true).ordered(true).multiple(false).origin("8418759418188362492").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForButtonIcon() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "ButtonIcon", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa19701bL);
    b.class_(false, false, false);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/7076342757640990747");
    b.version(3);
    b.property("label", 0x6234383efa19701dL).type(PrimitiveTypeId.STRING).origin("7076342757640990749").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForButtonLink() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "ButtonLink", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x74d571161a9772ecL);
    b.class_(false, false, false);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/8418759418188362476");
    b.version(3);
    b.property("url", 0x74d571161a9772eeL).type(PrimitiveTypeId.STRING).origin("8418759418188362478").done();
    b.alias("buttonLink");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForCardContent() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "CardContent", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x58d9188ac92a5f2aL);
    b.class_(false, false, false);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/6402175329643421482");
    b.version(3);
    b.property("label", 0x58d9188ac9362e16L).type(PrimitiveTypeId.STRING).origin("6402175329644195350").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForCardTitle() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "CardTitle", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x58d9188ac92a5f23L);
    b.class_(false, false, false);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/6402175329643421475");
    b.version(3);
    b.property("labelFrom", 0x58d9188ac92a5f25L).type(PrimitiveTypeId.STRING).origin("6402175329643421477").done();
    b.property("labelTo", 0x58d9188ac92a5f27L).type(PrimitiveTypeId.STRING).origin("6402175329643421479").done();
    b.alias("cardTitle");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForCarpoolNotation() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "CarpoolNotation", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383ef9f9a3f7L);
    b.class_(false, false, true);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/7076342757638906871");
    b.version(3);
    b.property("appName", 0x6234383ef9fa581fL).type(PrimitiveTypeId.STRING).origin("7076342757638952991").done();
    b.property("appTitle", 0x6234383ef9fa5820L).type(PrimitiveTypeId.STRING).origin("7076342757638952992").done();
    b.property("appDescription", 0x6234383ef9fa5821L).type(PrimitiveTypeId.STRING).origin("7076342757638952993").done();
    b.property("appPort", 0x6234383ef9fa5822L).type(PrimitiveTypeId.INTEGER).origin("7076342757638952994").done();
    b.property("footer", 0x58d9188ac928c8b9L).type(PrimitiveTypeId.STRING).origin("6402175329643317433").done();
    b.property("footerOption", 0x58d9188ac928c8baL).type(PrimitiveTypeId.STRING).origin("6402175329643317434").done();
    b.property("appTheme", 0x6234383ef9fa5823L).type(PrimitiveTypeId.STRING).origin("7076342757638952995").done();
    b.property("appMenuPosition", 0x6234383ef9fb8b71L).type(PrimitiveTypeId.STRING).origin("7076342757639031665").done();
    b.property("appApiUrl", 0x6234383efa01740aL).type(PrimitiveTypeId.STRING).origin("7076342757639418890").done();
    b.aggregate("appMenuItems", 0x6234383ef9fbeb25L).target(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383ef9fbeb21L).optional(false).ordered(true).multiple(true).origin("7076342757639056165").done();
    b.aggregate("appComponents", 0x6234383efa002bbbL).target(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa002bb6L).optional(false).ordered(true).multiple(true).origin("7076342757639334843").done();
    b.aggregate("appApiEndpoints", 0x6234383efa017485L).target(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa017407L).optional(false).ordered(true).multiple(true).origin("7076342757639419013").done();
    b.aggregate("appRender", 0x6234383efa06ef5cL).target(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa05b791L).optional(false).ordered(true).multiple(true).origin("7076342757639778140").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForChildRender() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "ChildRender", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x15c1251b5404ad14L);
    b.interface_();
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/1567574944605580564");
    b.version(3);
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForFormInput() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "FormInput", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa11516eL);
    b.class_(false, false, false);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/7076342757640458606");
    b.version(3);
    b.property("inputLabel", 0x6234383efa115170L).type(PrimitiveTypeId.STRING).origin("7076342757640458608").done();
    b.property("inputType", 0x6234383efa115171L).type(MetaIdFactory.dataTypeId(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa10088fL)).origin("7076342757640458609").done();
    b.alias("input");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForRenderButtons() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "RenderButtons", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x74d571161a9cef1aL);
    b.class_(false, false, false);
    b.parent(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x15c1251b5404ad14L);
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/8418759418188721946");
    b.version(3);
    b.aggregate("buttons", 0x74d571161a9cef1cL).target(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa16de2bL).optional(false).ordered(true).multiple(true).origin("8418759418188721948").done();
    b.alias("renderButtons");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForRenderCard() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "RenderCard", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x58d9188ac92a5f1dL);
    b.class_(false, false, false);
    b.parent(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x15c1251b5404ad14L);
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/6402175329643421469");
    b.version(3);
    b.aggregate("title", 0x58d9188ac92a5f28L).target(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x58d9188ac92a5f23L).optional(false).ordered(true).multiple(false).origin("6402175329643421480").done();
    b.aggregate("content", 0x58d9188ac92a5f5fL).target(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x58d9188ac92a5f2aL).optional(false).ordered(true).multiple(true).origin("6402175329643421535").done();
    b.alias("card");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForRenderForm() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "RenderForm", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa10088dL);
    b.class_(false, false, false);
    b.parent(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x15c1251b5404ad14L);
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/7076342757640374413");
    b.version(3);
    b.aggregate("formInputs", 0x6234383efa115172L).target(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa11516eL).optional(false).ordered(true).multiple(true).origin("7076342757640458610").done();
    b.aggregate("formButton", 0x6234383efa16de2fL).target(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa16de2bL).optional(true).ordered(true).multiple(false).origin("7076342757640822319").done();
    b.alias("form");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForRenderHeading() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "RenderHeading", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa0de721L);
    b.class_(false, false, false);
    b.parent(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x15c1251b5404ad14L);
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/7076342757640234785");
    b.version(3);
    b.property("value", 0x6234383efa0de723L).type(PrimitiveTypeId.STRING).origin("7076342757640234787").done();
    b.alias("heading");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForRenderTable() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "RenderTable", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa1aca6bL);
    b.class_(false, false, false);
    b.parent(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x15c1251b5404ad14L);
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/7076342757641079403");
    b.version(3);
    b.aggregate("tableHeadings", 0x6234383efa1aca74L).target(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa1aca6dL).optional(false).ordered(true).multiple(true).origin("7076342757641079412").done();
    b.aggregate("tableRows", 0x6234383efa1aca75L).target(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa1aca71L).optional(false).ordered(true).multiple(false).origin("7076342757641079413").done();
    b.aggregate("title", 0x6234383efa2a7819L).target(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa2a77f5L).optional(false).ordered(true).multiple(false).origin("7076342757642106905").done();
    b.aggregate("button", 0x6234383efa2bfff6L).target(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa16de2bL).optional(true).ordered(true).multiple(false).origin("7076342757642207222").done();
    b.alias("table");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForRenderTabs() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "RenderTabs", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x62945a6b81827485L);
    b.class_(false, false, false);
    b.parent(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x15c1251b5404ad14L);
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/7103401930050925701");
    b.version(3);
    b.aggregate("list", 0x62945a6b81827489L).target(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x62945a6b81827487L).optional(false).ordered(true).multiple(true).origin("7103401930050925705").done();
    b.aggregate("tables", 0x62945a6b818274e5L).target(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa1aca6bL).optional(false).ordered(true).multiple(true).origin("7103401930050925797").done();
    b.alias("renderTabs");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForRenderText() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "RenderText", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa09d317L);
    b.class_(false, false, false);
    b.parent(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x15c1251b5404ad14L);
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/7076342757639967511");
    b.version(3);
    b.property("value", 0x6234383efa09d319L).type(PrimitiveTypeId.STRING).origin("7076342757639967513").done();
    b.alias("text");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForTableCell() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "TableCell", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa1aca77L);
    b.class_(false, false, false);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/7076342757641079415");
    b.version(3);
    b.property("label", 0x6234383efa1aca79L).type(PrimitiveTypeId.STRING).origin("7076342757641079417").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForTableHeading() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "TableHeading", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa1aca6dL);
    b.class_(false, false, false);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/7076342757641079405");
    b.version(3);
    b.aggregate("cell", 0x58d9188ac925d15eL).target(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa1aca77L).optional(false).ordered(true).multiple(true).origin("6402175329643123038").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForTableRow() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "TableRow", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa1aca71L);
    b.class_(false, false, false);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/7076342757641079409");
    b.version(3);
    b.aggregate("cells", 0x6234383efa1aca7bL).target(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa1aca77L).optional(false).ordered(true).multiple(true).origin("7076342757641079419").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForTableTitle() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "TableTitle", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa2a77f5L);
    b.class_(false, false, false);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/7076342757642106869");
    b.version(3);
    b.property("label", 0x6234383efa2a77f8L).type(PrimitiveTypeId.STRING).origin("7076342757642106872").done();
    b.alias("tableTitle");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForTabsContent() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "TabsContent", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x62945a6b818d8778L);
    b.class_(false, false, false);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/7103401930051651448");
    b.version(3);
    b.aggregate("tables", 0x62945a6b818d877aL).target(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383efa1aca6bL).optional(false).ordered(true).multiple(true).origin("7103401930051651450").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForTabsList() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "TabsList", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x62945a6b81827487L);
    b.class_(false, false, false);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/7103401930050925703");
    b.version(3);
    b.aggregate("rows", 0x62945a6b818274b5L).target(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x62945a6b818274b1L).optional(false).ordered(true).multiple(true).origin("7103401930050925749").done();
    b.alias("tabsList");
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForTabsListRow() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("CarpoolLang", "TabsListRow", 0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x62945a6b818274b1L);
    b.class_(false, false, false);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)/7103401930050925745");
    b.version(3);
    b.property("value", 0x62945a6b818274b3L).type(PrimitiveTypeId.STRING).origin("7103401930050925747").done();
    b.property("label", 0x62945a6b818274b4L).type(PrimitiveTypeId.STRING).origin("7103401930050925748").done();
    b.alias("tabsListRow");
    return b.create();
  }
}
