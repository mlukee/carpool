package CarpoolLang.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;

public class CarpoolNotation_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    String margin_class = "mr-auto";
    String sideBarSideString = "left";

    if (SPropertyOperations.hasValue(ctx.getPrimaryInput(), PROPS.appMenuPosition$VK3B, "left")) {
      sideBarSideString = "left";
      margin_class = "mr-auto";
    }

    if (SPropertyOperations.hasValue(ctx.getPrimaryInput(), PROPS.appMenuPosition$VK3B, "right")) {
      sideBarSideString = "right";
      margin_class = "ml-auto";
    }

    tgs.append("// layout.tsx\n");
    tgs.append("return (\n");
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("<html lang=\"en\" suppressHydrationWarning>\n");
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("<body className=\"overflow-x-hidden\">\n");
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("<ThemeProvider attribute=\"class\" defaultTheme=\"dark\" enableSystem disableTransitionOnChange>\n");
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("<SessionWrapper>\n");
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("<Providers>\n");
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("<div className=\"flex min-h-screen flex-col\">\n");
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    if (SPropertyOperations.hasValue(ctx.getPrimaryInput(), PROPS.appMenuPosition$VK3B, "top")) {
      tgs.append("<AppNavbar />\n");
    }
    if (SPropertyOperations.hasValue(ctx.getPrimaryInput(), PROPS.appMenuPosition$VK3B, "left")) {
      tgs.append("<Sidebar />\n");
    }
    if (SPropertyOperations.hasValue(ctx.getPrimaryInput(), PROPS.appMenuPosition$VK3B, "right")) {
      tgs.append("<Sidebar />\n");
    }
    tgs.indent();
    tgs.append("<div className=\"flex flex-1 p-3\">\n");
    ctx.getBuffer().area().increaseIndent();
    tgs.indent();
    tgs.append("<main className=\"flex-1\">{children}</main>\n");
    ctx.getBuffer().area().decreaseIndent();
    tgs.indent();
    tgs.append("</div>\n");
    if (SPropertyOperations.hasValue(ctx.getPrimaryInput(), PROPS.footerOption$Usxa, "Yes")) {
      tgs.indent();
      tgs.append("<footer className=\"mx-auto mb-1 items-center justify-center\">\n");
      ctx.getBuffer().area().increaseIndent();
      tgs.indent();
      tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.footer$Usi9));
      tgs.append(" {new Date().getFullYear()}");
      tgs.append("\n");
      ctx.getBuffer().area().decreaseIndent();
      tgs.indent();
      tgs.append("</footer>\n");
    }
    ctx.getBuffer().area().decreaseIndent();
    tgs.indent();
    tgs.append("</div>\n");
    tgs.indent();
    tgs.append("<Toaster />\n");
    ctx.getBuffer().area().decreaseIndent();
    tgs.indent();
    tgs.append("</Providers>\n");
    ctx.getBuffer().area().decreaseIndent();
    tgs.indent();
    tgs.append("</SessionWrapper>\n");
    ctx.getBuffer().area().decreaseIndent();
    tgs.indent();
    tgs.append("</ThemeProvider>\n");
    ctx.getBuffer().area().decreaseIndent();
    tgs.indent();
    tgs.append("</body>\n");
    ctx.getBuffer().area().decreaseIndent();
    tgs.indent();
    tgs.append("</html>\n");
    ctx.getBuffer().area().decreaseIndent();
    tgs.indent();
    tgs.append("); \n");
    tgs.append("// end of layout.tsx\n");
    if (SPropertyOperations.hasValue(ctx.getPrimaryInput(), PROPS.appMenuPosition$VK3B, "right") || SPropertyOperations.hasValue(ctx.getPrimaryInput(), PROPS.appMenuPosition$VK3B, "left")) {
      tgs.indent();
      tgs.append("// start sidebar.tsx in Components\n");
      tgs.append("const Sidebar = () => {\n");
      ctx.getBuffer().area().increaseIndent();
      tgs.indent();
      tgs.append("return (\n");
      ctx.getBuffer().area().increaseIndent();
      tgs.indent();
      tgs.append("<div className=\"relative ");
      tgs.append(margin_class);
      tgs.append(" p-2\">\n");
      ctx.getBuffer().area().increaseIndent();
      tgs.indent();
      tgs.append("<Sheet>\n");
      ctx.getBuffer().area().increaseIndent();
      tgs.indent();
      tgs.append("<SheetTrigger asChild>\n");
      ctx.getBuffer().area().increaseIndent();
      tgs.indent();
      tgs.append("<Button variant=\"outline\" size=\"icon\">\n");
      ctx.getBuffer().area().increaseIndent();
      tgs.indent();
      tgs.append("<Menu className=\"h-[1.2rem] w-[1.2rem]\" />\n");
      tgs.indent();
      tgs.append("<span className=\"sr-only\">Toggle navigation</span>\n");
      ctx.getBuffer().area().decreaseIndent();
      tgs.indent();
      tgs.append("</Button>\n");
      ctx.getBuffer().area().decreaseIndent();
      tgs.indent();
      tgs.append("</SheetTrigger>\n");
      tgs.indent();
      tgs.append("<SheetContent side={\"");
      tgs.append(sideBarSideString);
      tgs.append("\"}>\n");
      ctx.getBuffer().area().increaseIndent();
      tgs.indent();
      tgs.append("<SheetHeader>\n");
      ctx.getBuffer().area().increaseIndent();
      tgs.indent();
      tgs.append("<SheetTitle className=\"flex justify-between px-2\">\n");
      ctx.getBuffer().area().increaseIndent();
      tgs.indent();
      tgs.append("Menu\n");
      tgs.indent();
      tgs.append("<ThemeToggle />\n");
      ctx.getBuffer().area().decreaseIndent();
      tgs.indent();
      tgs.append("</SheetTitle>\n");
      tgs.indent();
      tgs.append("<hr />\n");
      tgs.indent();
      tgs.append("<div className=\"flex flex-col gap-2\">\n");
      ctx.getBuffer().area().increaseIndent();
      tgs.indent();
      tgs.append("<Link href=\"/\" className=\"flex items-center gap-2\">\n");
      ctx.getBuffer().area().increaseIndent();
      tgs.indent();
      tgs.append("<Home /> Home\n");
      ctx.getBuffer().area().decreaseIndent();
      tgs.indent();
      tgs.append("</Link>\n");
      tgs.indent();
      tgs.append("<Link href=\"/find-ride\" className=\"flex items-center gap-2\">\n");
      ctx.getBuffer().area().increaseIndent();
      tgs.indent();
      tgs.append("<Car /> Find Rides\n");
      ctx.getBuffer().area().decreaseIndent();
      tgs.indent();
      tgs.append("</Link>\n");
      tgs.indent();
      tgs.append("<Link href=\"/add-ride\" className=\"flex items-center gap-2\">\n");
      ctx.getBuffer().area().increaseIndent();
      tgs.indent();
      tgs.append("<Plus /> Add Rides\n");
      ctx.getBuffer().area().decreaseIndent();
      tgs.indent();
      tgs.append("</Link>\n");
      tgs.indent();
      tgs.append("<Link href=\"/profile\" className=\"flex items-center gap-2\">\n");
      ctx.getBuffer().area().increaseIndent();
      tgs.indent();
      tgs.append("<User /> Profile\n");
      ctx.getBuffer().area().decreaseIndent();
      tgs.indent();
      tgs.append("</Link>\n");

      ctx.getBuffer().area().decreaseIndent();
      tgs.indent();
      tgs.append("</div>\n");
      ctx.getBuffer().area().decreaseIndent();
      tgs.indent();
      tgs.append("</SheetHeader>\n");
      ctx.getBuffer().area().decreaseIndent();
      tgs.indent();
      tgs.append("</SheetContent>\n");
      ctx.getBuffer().area().decreaseIndent();
      tgs.indent();
      tgs.append("</Sheet>\n");
      ctx.getBuffer().area().decreaseIndent();
      tgs.indent();
      tgs.append("</div>\n");
      ctx.getBuffer().area().decreaseIndent();
      tgs.indent();
      tgs.append(");\n");
      ctx.getBuffer().area().decreaseIndent();
      tgs.indent();
      tgs.append("};\n");
      tgs.append("export default Sidebar;\n");
      tgs.append("// end sidebar.tsx in Components\n");
    }
    for (SNode item : SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.appRender$mEdl)) {
      tgs.appendNode(item);
    }
  }

  private static final class PROPS {
    /*package*/ static final SProperty appMenuPosition$VK3B = MetaAdapterFactory.getProperty(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383ef9f9a3f7L, 0x6234383ef9fb8b71L, "appMenuPosition");
    /*package*/ static final SProperty footer$Usi9 = MetaAdapterFactory.getProperty(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383ef9f9a3f7L, 0x58d9188ac928c8b9L, "footer");
    /*package*/ static final SProperty footerOption$Usxa = MetaAdapterFactory.getProperty(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383ef9f9a3f7L, 0x58d9188ac928c8baL, "footerOption");
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink appRender$mEdl = MetaAdapterFactory.getContainmentLink(0x722e4ffa13ae440cL, 0xb33c3c19945a9c69L, 0x6234383ef9f9a3f7L, 0x6234383efa06ef5cL, "appRender");
  }
}
