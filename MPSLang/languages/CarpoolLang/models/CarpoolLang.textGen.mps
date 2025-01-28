<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7c6d985c-a16c-42e0-b7b0-649298d55c0c(CarpoolLang.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <devkit ref="fa73d85a-ac7f-447b-846c-fcdc41caa600(jetbrains.mps.devkit.aspect.textgen)" />
  </languages>
  <imports>
    <import index="n245" ref="r:213b5080-9e54-4891-acb4-be7d245d7219(CarpoolLang.structure)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ngI" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="45307784116571022" name="jetbrains.mps.lang.textGen.structure.FilenameFunction" flags="ig" index="29tfMY" />
      <concept id="8931911391946696733" name="jetbrains.mps.lang.textGen.structure.ExtensionDeclaration" flags="in" index="9MYSb" />
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
      <concept id="1237305491868" name="jetbrains.mps.lang.textGen.structure.CollectionAppendPart" flags="ng" index="l9S2W">
        <child id="1237305945551" name="list" index="lbANJ" />
      </concept>
      <concept id="1237305557638" name="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart" flags="ng" index="la8eA">
        <property id="1237305576108" name="value" index="lacIc" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="1233670071145" name="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration" flags="ig" index="WtQ9Q">
        <reference id="1233670257997" name="conceptDeclaration" index="WuzLi" />
        <child id="45307784116711884" name="filename" index="29tGrW" />
        <child id="1233749296504" name="textGenBlock" index="11c4hB" />
        <child id="7991274449437422201" name="extension" index="33IsuW" />
      </concept>
      <concept id="1233748055915" name="jetbrains.mps.lang.textGen.structure.NodeParameter" flags="nn" index="117lpO" />
      <concept id="1233749247888" name="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration" flags="in" index="11bSqf" />
      <concept id="1233920501193" name="jetbrains.mps.lang.textGen.structure.IndentBufferOperation" flags="nn" index="1bpajm" />
      <concept id="1236188139846" name="jetbrains.mps.lang.textGen.structure.WithIndentOperation" flags="nn" index="3izx1p">
        <child id="1236188238861" name="list" index="3izTki" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1146253292180" name="jetbrains.mps.lang.smodel.structure.Property_HasValue_Simple" flags="nn" index="3y1jeu">
        <child id="1146253292181" name="value" index="3y1jev" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
    </language>
  </registry>
  <node concept="WtQ9Q" id="7r71N3ReEW8">
    <ref role="WuzLi" to="n245:68Oe3VTYqfR" resolve="CarpoolNotation" />
    <node concept="29tfMY" id="7r71N3ReEW9" role="29tGrW">
      <node concept="3clFbS" id="7r71N3ReEWa" role="2VODD2">
        <node concept="3clFbF" id="7r71N3ReSwM" role="3cqZAp">
          <node concept="Xl_RD" id="1U_6cKYw4xN" role="3clFbG">
            <property role="Xl_RC" value="App" />
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="7r71N3ReQH5" role="33IsuW">
      <node concept="3clFbS" id="7r71N3ReQH6" role="2VODD2">
        <node concept="3clFbF" id="7r71N3ReRdA" role="3cqZAp">
          <node concept="Xl_RD" id="7r71N3ReRu4" role="3clFbG">
            <property role="Xl_RC" value="tsx" />
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="7r71N3ReVVq" role="11c4hB">
      <node concept="3clFbS" id="7r71N3ReVVr" role="2VODD2">
        <node concept="3cpWs8" id="1U_6cKYBu8S" role="3cqZAp">
          <node concept="3cpWsn" id="1U_6cKYBu8V" role="3cpWs9">
            <property role="TrG5h" value="margin_class" />
            <node concept="17QB3L" id="1U_6cKYBu8Q" role="1tU5fm" />
            <node concept="Xl_RD" id="1U_6cKYBOXl" role="33vP2m">
              <property role="Xl_RC" value="mr-auto" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1U_6cKYBv3f" role="3cqZAp">
          <node concept="3cpWsn" id="1U_6cKYBv3i" role="3cpWs9">
            <property role="TrG5h" value="sideBarSideString" />
            <node concept="17QB3L" id="1U_6cKYBv3d" role="1tU5fm" />
            <node concept="Xl_RD" id="1U_6cKYBP2M" role="33vP2m">
              <property role="Xl_RC" value="left" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1U_6cKYBv99" role="3cqZAp" />
        <node concept="3clFbJ" id="1U_6cKYBw4g" role="3cqZAp">
          <node concept="3clFbS" id="1U_6cKYBw4i" role="3clFbx">
            <node concept="3clFbF" id="1U_6cKYBzHY" role="3cqZAp">
              <node concept="37vLTI" id="1U_6cKYBBsL" role="3clFbG">
                <node concept="Xl_RD" id="1U_6cKYBBGY" role="37vLTx">
                  <property role="Xl_RC" value="left" />
                </node>
                <node concept="37vLTw" id="1U_6cKYBzHW" role="37vLTJ">
                  <ref role="3cqZAo" node="1U_6cKYBv3i" resolve="sideBarSideString" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1U_6cKYBCvg" role="3cqZAp">
              <node concept="37vLTI" id="1U_6cKYBFHW" role="3clFbG">
                <node concept="Xl_RD" id="1U_6cKYBFIs" role="37vLTx">
                  <property role="Xl_RC" value="mr-auto" />
                </node>
                <node concept="37vLTw" id="1U_6cKYBCve" role="37vLTJ">
                  <ref role="3cqZAo" node="1U_6cKYBu8V" resolve="margin_class" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1U_6cKYByny" role="3clFbw">
            <node concept="2OqwBi" id="1U_6cKYBx10" role="2Oq$k0">
              <node concept="117lpO" id="1U_6cKYBwSI" role="2Oq$k0" />
              <node concept="3TrcHB" id="1U_6cKYBxmN" role="2OqNvi">
                <ref role="3TsBF5" to="n245:68Oe3VTYSHL" resolve="appMenuPosition" />
              </node>
            </node>
            <node concept="3y1jeu" id="1U_6cKYBzF9" role="2OqNvi">
              <node concept="Xl_RD" id="1U_6cKYBzFT" role="3y1jev">
                <property role="Xl_RC" value="left" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1U_6cKYBFJw" role="3cqZAp" />
        <node concept="3clFbJ" id="1U_6cKYBG$e" role="3cqZAp">
          <node concept="3clFbS" id="1U_6cKYBG$g" role="3clFbx">
            <node concept="3clFbF" id="1U_6cKYBKdH" role="3cqZAp">
              <node concept="37vLTI" id="1U_6cKYBMdb" role="3clFbG">
                <node concept="Xl_RD" id="1U_6cKYBMto" role="37vLTx">
                  <property role="Xl_RC" value="right" />
                </node>
                <node concept="37vLTw" id="1U_6cKYBKdF" role="37vLTJ">
                  <ref role="3cqZAo" node="1U_6cKYBv3i" resolve="sideBarSideString" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1U_6cKYBMuO" role="3cqZAp">
              <node concept="37vLTI" id="1U_6cKYBOui" role="3clFbG">
                <node concept="Xl_RD" id="1U_6cKYBOIv" role="37vLTx">
                  <property role="Xl_RC" value="ml-auto" />
                </node>
                <node concept="37vLTw" id="1U_6cKYBMuM" role="37vLTJ">
                  <ref role="3cqZAo" node="1U_6cKYBu8V" resolve="margin_class" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1U_6cKYBIQH" role="3clFbw">
            <node concept="2OqwBi" id="1U_6cKYBHxl" role="2Oq$k0">
              <node concept="117lpO" id="1U_6cKYBHp3" role="2Oq$k0" />
              <node concept="3TrcHB" id="1U_6cKYBHPY" role="2OqNvi">
                <ref role="3TsBF5" to="n245:68Oe3VTYSHL" resolve="appMenuPosition" />
              </node>
            </node>
            <node concept="3y1jeu" id="1U_6cKYBKaf" role="2OqNvi">
              <node concept="Xl_RD" id="1U_6cKYBKaZ" role="3y1jev">
                <property role="Xl_RC" value="right" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1U_6cKYBw0Q" role="3cqZAp" />
        <node concept="lc7rE" id="1U_6cKY_y_3" role="3cqZAp">
          <node concept="la8eA" id="1U_6cKY_yBj" role="lcghm">
            <property role="lacIc" value="// layout.tsx\n" />
          </node>
        </node>
        <node concept="lc7rE" id="1U_6cKYv75C" role="3cqZAp">
          <node concept="la8eA" id="1U_6cKYv763" role="lcghm">
            <property role="lacIc" value="return (\n" />
          </node>
        </node>
        <node concept="3izx1p" id="1U_6cKYv793" role="3cqZAp">
          <node concept="3clFbS" id="1U_6cKYv795" role="3izTki">
            <node concept="1bpajm" id="1U_6cKYv79t" role="3cqZAp" />
            <node concept="lc7rE" id="1U_6cKYv7ae" role="3cqZAp">
              <node concept="la8eA" id="1U_6cKYv7aF" role="lcghm">
                <property role="lacIc" value="&lt;html lang=&quot;en&quot; suppressHydrationWarning&gt;\n" />
              </node>
            </node>
            <node concept="3izx1p" id="1U_6cKYv7fL" role="3cqZAp">
              <node concept="3clFbS" id="1U_6cKYv7fN" role="3izTki">
                <node concept="1bpajm" id="1U_6cKYv7gb" role="3cqZAp" />
                <node concept="lc7rE" id="1U_6cKYv7gC" role="3cqZAp">
                  <node concept="la8eA" id="1U_6cKYv7h5" role="lcghm">
                    <property role="lacIc" value="&lt;body className=&quot;overflow-x-hidden&quot;&gt;\n" />
                  </node>
                </node>
                <node concept="3izx1p" id="1U_6cKYv7mT" role="3cqZAp">
                  <node concept="3clFbS" id="1U_6cKYv7mV" role="3izTki">
                    <node concept="1bpajm" id="1U_6cKYv7nj" role="3cqZAp" />
                    <node concept="lc7rE" id="1U_6cKYv7o4" role="3cqZAp">
                      <node concept="la8eA" id="1U_6cKYv7ox" role="lcghm">
                        <property role="lacIc" value="&lt;ThemeProvider attribute=&quot;class&quot; defaultTheme=&quot;dark&quot; enableSystem disableTransitionOnChange&gt;\n" />
                      </node>
                    </node>
                    <node concept="3izx1p" id="1U_6cKYv7yD" role="3cqZAp">
                      <node concept="3clFbS" id="1U_6cKYv7yF" role="3izTki">
                        <node concept="1bpajm" id="1U_6cKYv7z3" role="3cqZAp" />
                        <node concept="lc7rE" id="1U_6cKYv7zO" role="3cqZAp">
                          <node concept="la8eA" id="1U_6cKYv7$h" role="lcghm">
                            <property role="lacIc" value="&lt;SessionWrapper&gt;\n" />
                          </node>
                        </node>
                        <node concept="3izx1p" id="1U_6cKYv7Bf" role="3cqZAp">
                          <node concept="3clFbS" id="1U_6cKYv7Bh" role="3izTki">
                            <node concept="1bpajm" id="1U_6cKYv7MO" role="3cqZAp" />
                            <node concept="lc7rE" id="1U_6cKYv7N_" role="3cqZAp">
                              <node concept="la8eA" id="1U_6cKYv7O2" role="lcghm">
                                <property role="lacIc" value="&lt;Providers&gt;\n" />
                              </node>
                            </node>
                            <node concept="3izx1p" id="1U_6cKYv7TJ" role="3cqZAp">
                              <node concept="3clFbS" id="1U_6cKYv7TL" role="3izTki">
                                <node concept="1bpajm" id="1U_6cKYv7U9" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYv7UU" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYv7Vn" role="lcghm">
                                    <property role="lacIc" value="&lt;div className=&quot;flex min-h-screen flex-col&quot;&gt;\n" />
                                  </node>
                                </node>
                                <node concept="3izx1p" id="1U_6cKYv892" role="3cqZAp">
                                  <node concept="3clFbS" id="1U_6cKYv894" role="3izTki">
                                    <node concept="1bpajm" id="1U_6cKYv89s" role="3cqZAp" />
                                    <node concept="3clFbJ" id="1U_6cKYv8bq" role="3cqZAp">
                                      <node concept="3clFbS" id="1U_6cKYv8bs" role="3clFbx">
                                        <node concept="lc7rE" id="1U_6cKYvd3m" role="3cqZAp">
                                          <node concept="la8eA" id="1U_6cKYvd3M" role="lcghm">
                                            <property role="lacIc" value="&lt;AppNavbar /&gt;\n" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="1U_6cKYvbAp" role="3clFbw">
                                        <node concept="2OqwBi" id="1U_6cKYv8mF" role="2Oq$k0">
                                          <node concept="117lpO" id="1U_6cKYv8ep" role="2Oq$k0" />
                                          <node concept="3TrcHB" id="1U_6cKYvaqV" role="2OqNvi">
                                            <ref role="3TsBF5" to="n245:68Oe3VTYSHL" resolve="appMenuPosition" />
                                          </node>
                                        </node>
                                        <node concept="3y1jeu" id="1U_6cKYvcVk" role="2OqNvi">
                                          <node concept="Xl_RD" id="1U_6cKYvcY2" role="3y1jev">
                                            <property role="Xl_RC" value="top" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbJ" id="1U_6cKYvd7X" role="3cqZAp">
                                      <node concept="3clFbS" id="1U_6cKYvd7Z" role="3clFbx">
                                        <node concept="lc7rE" id="1U_6cKYveS5" role="3cqZAp">
                                          <node concept="la8eA" id="1U_6cKYveSx" role="lcghm">
                                            <property role="lacIc" value="&lt;Sidebar /&gt;\n" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="1U_6cKYvdNi" role="3clFbw">
                                        <node concept="2OqwBi" id="1U_6cKYvdiN" role="2Oq$k0">
                                          <node concept="117lpO" id="1U_6cKYvdaM" role="2Oq$k0" />
                                          <node concept="3TrcHB" id="1U_6cKYvdvE" role="2OqNvi">
                                            <ref role="3TsBF5" to="n245:68Oe3VTYSHL" resolve="appMenuPosition" />
                                          </node>
                                        </node>
                                        <node concept="3y1jeu" id="1U_6cKYveM1" role="2OqNvi">
                                          <node concept="Xl_RD" id="1U_6cKYveML" role="3y1jev">
                                            <property role="Xl_RC" value="left" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbJ" id="1U_6cKYveX3" role="3cqZAp">
                                      <node concept="3clFbS" id="1U_6cKYveX5" role="3clFbx">
                                        <node concept="lc7rE" id="1U_6cKYvhfr" role="3cqZAp">
                                          <node concept="la8eA" id="1U_6cKYvhfR" role="lcghm">
                                            <property role="lacIc" value="&lt;Sidebar /&gt;\n" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="1U_6cKYvgcA" role="3clFbw">
                                        <node concept="2OqwBi" id="1U_6cKYvf2h" role="2Oq$k0">
                                          <node concept="117lpO" id="1U_6cKYveYh" role="2Oq$k0" />
                                          <node concept="3TrcHB" id="1U_6cKYvfSY" role="2OqNvi">
                                            <ref role="3TsBF5" to="n245:68Oe3VTYSHL" resolve="appMenuPosition" />
                                          </node>
                                        </node>
                                        <node concept="3y1jeu" id="1U_6cKYvhbl" role="2OqNvi">
                                          <node concept="Xl_RD" id="1U_6cKYvhc5" role="3y1jev">
                                            <property role="Xl_RC" value="right" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="1bpajm" id="1U_6cKYzzQb" role="3cqZAp" />
                                    <node concept="lc7rE" id="1U_6cKYvhkJ" role="3cqZAp">
                                      <node concept="la8eA" id="1U_6cKYvhoe" role="lcghm">
                                        <property role="lacIc" value="&lt;div className=&quot;flex flex-1 p-3&quot;&gt;\n" />
                                      </node>
                                    </node>
                                    <node concept="3izx1p" id="1U_6cKYvjKS" role="3cqZAp">
                                      <node concept="3clFbS" id="1U_6cKYvjKU" role="3izTki">
                                        <node concept="1bpajm" id="1U_6cKYvjTs" role="3cqZAp" />
                                        <node concept="lc7rE" id="1U_6cKYvjP3" role="3cqZAp">
                                          <node concept="la8eA" id="1U_6cKYvjPt" role="lcghm">
                                            <property role="lacIc" value="&lt;main className=&quot;flex-1&quot;&gt;{children}&lt;/main&gt;\n" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="1bpajm" id="1U_6cKYzzUz" role="3cqZAp" />
                                    <node concept="lc7rE" id="1U_6cKYvhwl" role="3cqZAp">
                                      <node concept="la8eA" id="1U_6cKYvhxQ" role="lcghm">
                                        <property role="lacIc" value="&lt;/div&gt;\n" />
                                      </node>
                                    </node>
                                    <node concept="3clFbJ" id="1U_6cKYvhAJ" role="3cqZAp">
                                      <node concept="3clFbS" id="1U_6cKYvhAL" role="3clFbx">
                                        <node concept="1bpajm" id="1U_6cKY$3gh" role="3cqZAp" />
                                        <node concept="lc7rE" id="1U_6cKYvj8W" role="3cqZAp">
                                          <node concept="la8eA" id="1U_6cKYvj9o" role="lcghm">
                                            <property role="lacIc" value="&lt;footer className=&quot;mx-auto mb-1 items-center justify-center&quot;&gt;\n" />
                                          </node>
                                        </node>
                                        <node concept="3izx1p" id="1U_6cKYvjes" role="3cqZAp">
                                          <node concept="3clFbS" id="1U_6cKYvjeu" role="3izTki">
                                            <node concept="1bpajm" id="1U_6cKYvjeP" role="3cqZAp" />
                                            <node concept="lc7rE" id="1U_6cKYvjf$" role="3cqZAp">
                                              <node concept="l9hG8" id="1U_6cKYvjh6" role="lcghm">
                                                <node concept="2OqwBi" id="1U_6cKYvjmo" role="lb14g">
                                                  <node concept="117lpO" id="1U_6cKYvjh_" role="2Oq$k0" />
                                                  <node concept="3TrcHB" id="1U_6cKYvjyG" role="2OqNvi">
                                                    <ref role="3TsBF5" to="n245:5zp68F9acyT" resolve="footer" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="lc7rE" id="1U_6cKYV7tf" role="3cqZAp">
                                              <node concept="la8eA" id="1U_6cKYV7u3" role="lcghm">
                                                <property role="lacIc" value=" {new Date().getFullYear()}" />
                                              </node>
                                            </node>
                                            <node concept="lc7rE" id="1U_6cKY$3jJ" role="3cqZAp">
                                              <node concept="la8eA" id="1U_6cKY$3kz" role="lcghm">
                                                <property role="lacIc" value="\n" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="1bpajm" id="1U_6cKY$3mK" role="3cqZAp" />
                                        <node concept="lc7rE" id="1U_6cKYvjC8" role="3cqZAp">
                                          <node concept="la8eA" id="1U_6cKYvjFD" role="lcghm">
                                            <property role="lacIc" value="&lt;/footer&gt;\n" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="1U_6cKYvi4O" role="3clFbw">
                                        <node concept="2OqwBi" id="1U_6cKYvhIA" role="2Oq$k0">
                                          <node concept="117lpO" id="1U_6cKYvhEi" role="2Oq$k0" />
                                          <node concept="3TrcHB" id="1U_6cKYvhKu" role="2OqNvi">
                                            <ref role="3TsBF5" to="n245:5zp68F9acyU" resolve="footerOption" />
                                          </node>
                                        </node>
                                        <node concept="3y1jeu" id="1U_6cKYvj3z" role="2OqNvi">
                                          <node concept="Xl_RD" id="1U_6cKYvj6h" role="3y1jev">
                                            <property role="Xl_RC" value="Yes" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="1bpajm" id="1U_6cKY$z0J" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYv843" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYv84w" role="lcghm">
                                    <property role="lacIc" value="&lt;/div&gt;\n" />
                                  </node>
                                </node>
                                <node concept="1bpajm" id="1U_6cKY_2YH" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYv86I" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYv87b" role="lcghm">
                                    <property role="lacIc" value="&lt;Toaster /&gt;\n" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1bpajm" id="1U_6cKY$z57" role="3cqZAp" />
                            <node concept="lc7rE" id="1U_6cKYv7R2" role="3cqZAp">
                              <node concept="la8eA" id="1U_6cKYv7Rv" role="lcghm">
                                <property role="lacIc" value="&lt;/Providers&gt;\n" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1bpajm" id="1U_6cKY$zbt" role="3cqZAp" />
                        <node concept="lc7rE" id="1U_6cKYv7C0" role="3cqZAp">
                          <node concept="la8eA" id="1U_6cKYv7CN" role="lcghm">
                            <property role="lacIc" value="&lt;/SessionWrapper&gt;\n" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1bpajm" id="1U_6cKY$zfP" role="3cqZAp" />
                    <node concept="lc7rE" id="1U_6cKYv7Ei" role="3cqZAp">
                      <node concept="la8eA" id="1U_6cKYv7EJ" role="lcghm">
                        <property role="lacIc" value="&lt;/ThemeProvider&gt;\n" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1bpajm" id="1U_6cKY$zkd" role="3cqZAp" />
                <node concept="lc7rE" id="1U_6cKYv7GA" role="3cqZAp">
                  <node concept="la8eA" id="1U_6cKYv7H3" role="lcghm">
                    <property role="lacIc" value="&lt;/body&gt;\n" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1bpajm" id="1U_6cKY$zo_" role="3cqZAp" />
            <node concept="lc7rE" id="1U_6cKYv7IU" role="3cqZAp">
              <node concept="la8eA" id="1U_6cKYv7Jn" role="lcghm">
                <property role="lacIc" value="&lt;/html&gt;\n" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1bpajm" id="1U_6cKYx_Rh" role="3cqZAp" />
        <node concept="lc7rE" id="1U_6cKYv7Kw" role="3cqZAp">
          <node concept="la8eA" id="1U_6cKYv7KX" role="lcghm">
            <property role="lacIc" value="); \n" />
          </node>
        </node>
        <node concept="lc7rE" id="1U_6cKY_yHh" role="3cqZAp">
          <node concept="la8eA" id="1U_6cKY_yJx" role="lcghm">
            <property role="lacIc" value="// end of layout.tsx\n" />
          </node>
        </node>
        <node concept="3clFbJ" id="1U_6cKYAMrl" role="3cqZAp">
          <node concept="3clFbS" id="1U_6cKYAMrn" role="3clFbx">
            <node concept="1bpajm" id="1U_6cKYAPHC" role="3cqZAp" />
            <node concept="lc7rE" id="1U_6cKYAPIo" role="3cqZAp">
              <node concept="la8eA" id="1U_6cKYAPIO" role="lcghm">
                <property role="lacIc" value="// start sidebar.tsx in Components\n" />
              </node>
            </node>
            <node concept="lc7rE" id="1U_6cKYBnjI" role="3cqZAp">
              <node concept="la8eA" id="1U_6cKYBnka" role="lcghm">
                <property role="lacIc" value="const Sidebar = () =&gt; {\n" />
              </node>
            </node>
            <node concept="3izx1p" id="1U_6cKYBnow" role="3cqZAp">
              <node concept="3clFbS" id="1U_6cKYBnoy" role="3izTki">
                <node concept="1bpajm" id="1U_6cKYBnuR" role="3cqZAp" />
                <node concept="lc7rE" id="1U_6cKYBnwm" role="3cqZAp">
                  <node concept="la8eA" id="1U_6cKYBnwM" role="lcghm">
                    <property role="lacIc" value="return (\n" />
                  </node>
                </node>
                <node concept="3izx1p" id="1U_6cKYBn_h" role="3cqZAp">
                  <node concept="3clFbS" id="1U_6cKYBn_j" role="3izTki">
                    <node concept="1bpajm" id="1U_6cKYBn_E" role="3cqZAp" />
                    <node concept="lc7rE" id="1U_6cKYBOPt" role="3cqZAp">
                      <node concept="la8eA" id="1U_6cKYBOPT" role="lcghm">
                        <property role="lacIc" value="&lt;div className=&quot;relative " />
                      </node>
                    </node>
                    <node concept="lc7rE" id="1U_6cKYBOUA" role="3cqZAp">
                      <node concept="l9hG8" id="1U_6cKYBOV2" role="lcghm">
                        <node concept="37vLTw" id="1U_6cKYBOVz" role="lb14g">
                          <ref role="3cqZAo" node="1U_6cKYBu8V" resolve="margin_class" />
                        </node>
                      </node>
                    </node>
                    <node concept="lc7rE" id="1U_6cKYBP4S" role="3cqZAp">
                      <node concept="la8eA" id="1U_6cKYBP5k" role="lcghm">
                        <property role="lacIc" value=" p-2&quot;&gt;\n" />
                      </node>
                    </node>
                    <node concept="3izx1p" id="1U_6cKYBP8Y" role="3cqZAp">
                      <node concept="3clFbS" id="1U_6cKYBP90" role="3izTki">
                        <node concept="1bpajm" id="1U_6cKYBP9n" role="3cqZAp" />
                        <node concept="lc7rE" id="1U_6cKYBPa6" role="3cqZAp">
                          <node concept="la8eA" id="1U_6cKYBPay" role="lcghm">
                            <property role="lacIc" value="&lt;Sheet&gt;\n" />
                          </node>
                        </node>
                        <node concept="3izx1p" id="1U_6cKYBPfJ" role="3cqZAp">
                          <node concept="3clFbS" id="1U_6cKYBPfL" role="3izTki">
                            <node concept="1bpajm" id="1U_6cKYBPhf" role="3cqZAp" />
                            <node concept="lc7rE" id="1U_6cKYBPgv" role="3cqZAp">
                              <node concept="la8eA" id="1U_6cKYBPhD" role="lcghm">
                                <property role="lacIc" value="&lt;SheetTrigger asChild&gt;\n" />
                              </node>
                            </node>
                            <node concept="3izx1p" id="1U_6cKYBPoi" role="3cqZAp">
                              <node concept="3clFbS" id="1U_6cKYBPok" role="3izTki">
                                <node concept="1bpajm" id="1U_6cKYBPoF" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYBPpq" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYBPpQ" role="lcghm">
                                    <property role="lacIc" value="&lt;Button variant=&quot;outline&quot; size=&quot;icon&quot;&gt;\n" />
                                  </node>
                                </node>
                                <node concept="3izx1p" id="1U_6cKYBPwy" role="3cqZAp">
                                  <node concept="3clFbS" id="1U_6cKYBPw$" role="3izTki">
                                    <node concept="1bpajm" id="1U_6cKYBPwV" role="3cqZAp" />
                                    <node concept="lc7rE" id="1U_6cKYBPxE" role="3cqZAp">
                                      <node concept="la8eA" id="1U_6cKYBPy6" role="lcghm">
                                        <property role="lacIc" value="&lt;Menu className=&quot;h-[1.2rem] w-[1.2rem]&quot; /&gt;\n" />
                                      </node>
                                    </node>
                                    <node concept="1bpajm" id="1U_6cKYCpvw" role="3cqZAp" />
                                    <node concept="lc7rE" id="1U_6cKYBPCX" role="3cqZAp">
                                      <node concept="la8eA" id="1U_6cKYBPDp" role="lcghm">
                                        <property role="lacIc" value="&lt;span className=&quot;sr-only&quot;&gt;Toggle navigation&lt;/span&gt;\n" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="1bpajm" id="1U_6cKYBPta" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYBPtU" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYBPum" role="lcghm">
                                    <property role="lacIc" value="&lt;/Button&gt;\n" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1bpajm" id="1U_6cKYBPkU" role="3cqZAp" />
                            <node concept="lc7rE" id="1U_6cKYBPlE" role="3cqZAp">
                              <node concept="la8eA" id="1U_6cKYBPm6" role="lcghm">
                                <property role="lacIc" value="&lt;/SheetTrigger&gt;\n" />
                              </node>
                            </node>
                            <node concept="1bpajm" id="1U_6cKYCpwY" role="3cqZAp" />
                            <node concept="lc7rE" id="1U_6cKYBPJy" role="3cqZAp">
                              <node concept="la8eA" id="1U_6cKYBPJY" role="lcghm">
                                <property role="lacIc" value="&lt;SheetContent side={&quot;" />
                              </node>
                            </node>
                            <node concept="lc7rE" id="1U_6cKYBPMa" role="3cqZAp">
                              <node concept="l9hG8" id="1U_6cKYBPNl" role="lcghm">
                                <node concept="37vLTw" id="1U_6cKYBQS2" role="lb14g">
                                  <ref role="3cqZAo" node="1U_6cKYBv3i" resolve="sideBarSideString" />
                                </node>
                              </node>
                            </node>
                            <node concept="lc7rE" id="1U_6cKYBQT1" role="3cqZAp">
                              <node concept="la8eA" id="1U_6cKYBQTt" role="lcghm">
                                <property role="lacIc" value="&quot;}&gt;\n" />
                              </node>
                            </node>
                            <node concept="3izx1p" id="1U_6cKYDBqH" role="3cqZAp">
                              <node concept="3clFbS" id="1U_6cKYDBqJ" role="3izTki">
                                <node concept="1bpajm" id="1U_6cKYDBr6" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYDBrP" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYDBsh" role="lcghm">
                                    <property role="lacIc" value="&lt;SheetHeader&gt;\n" />
                                  </node>
                                </node>
                                <node concept="3izx1p" id="1U_6cKYDByz" role="3cqZAp">
                                  <node concept="3clFbS" id="1U_6cKYDBy_" role="3izTki">
                                    <node concept="1bpajm" id="1U_6cKYDByW" role="3cqZAp" />
                                    <node concept="lc7rE" id="1U_6cKYDBzF" role="3cqZAp">
                                      <node concept="la8eA" id="1U_6cKYDB$7" role="lcghm">
                                        <property role="lacIc" value="&lt;SheetTitle className=&quot;flex justify-between px-2&quot;&gt;\n" />
                                      </node>
                                    </node>
                                    <node concept="3izx1p" id="1U_6cKYDBGc" role="3cqZAp">
                                      <node concept="3clFbS" id="1U_6cKYDBGe" role="3izTki">
                                        <node concept="1bpajm" id="1U_6cKYDBG_" role="3cqZAp" />
                                        <node concept="lc7rE" id="1U_6cKYDBH0" role="3cqZAp">
                                          <node concept="la8eA" id="1U_6cKYDBHs" role="lcghm">
                                            <property role="lacIc" value="Menu\n" />
                                          </node>
                                        </node>
                                        <node concept="1bpajm" id="1U_6cKYDBIz" role="3cqZAp" />
                                        <node concept="lc7rE" id="1U_6cKYDBJj" role="3cqZAp">
                                          <node concept="la8eA" id="1U_6cKYDBJJ" role="lcghm">
                                            <property role="lacIc" value="&lt;ThemeToggle /&gt;\n" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="1bpajm" id="1U_6cKYDBCt" role="3cqZAp" />
                                    <node concept="lc7rE" id="1U_6cKYDBDd" role="3cqZAp">
                                      <node concept="la8eA" id="1U_6cKYDBDD" role="lcghm">
                                        <property role="lacIc" value="&lt;/SheetTitle&gt;\n" />
                                      </node>
                                    </node>
                                    <node concept="1bpajm" id="1U_6cKYDBL$" role="3cqZAp" />
                                    <node concept="lc7rE" id="1U_6cKYDBM0" role="3cqZAp">
                                      <node concept="la8eA" id="1U_6cKYDBMs" role="lcghm">
                                        <property role="lacIc" value="&lt;hr /&gt;\n" />
                                      </node>
                                    </node>
                                    <node concept="1bpajm" id="1U_6cKYDBOC" role="3cqZAp" />
                                    <node concept="lc7rE" id="1U_6cKYDBPo" role="3cqZAp">
                                      <node concept="la8eA" id="1U_6cKYDBPO" role="lcghm">
                                        <property role="lacIc" value="&lt;div className=&quot;flex flex-col gap-2&quot;&gt;\n" />
                                      </node>
                                    </node>
                                    <node concept="3izx1p" id="1U_6cKYDBXb" role="3cqZAp">
                                      <node concept="3clFbS" id="1U_6cKYDBXd" role="3izTki">
                                        <node concept="1bpajm" id="1U_6cKYDCdV" role="3cqZAp" />
                                        <node concept="lc7rE" id="1U_6cKYDCdW" role="3cqZAp">
                                          <node concept="la8eA" id="1U_6cKYDCdX" role="lcghm">
                                            <property role="lacIc" value="&lt;Link href=&quot;/&quot; className=&quot;flex items-center gap-2&quot;&gt;\n" />
                                          </node>
                                        </node>
                                        <node concept="3izx1p" id="1U_6cKYDCdY" role="3cqZAp">
                                          <node concept="3clFbS" id="1U_6cKYDCdZ" role="3izTki">
                                            <node concept="1bpajm" id="1U_6cKYDCe0" role="3cqZAp" />
                                            <node concept="lc7rE" id="1U_6cKYDCe1" role="3cqZAp">
                                              <node concept="la8eA" id="1U_6cKYDCe2" role="lcghm">
                                                <property role="lacIc" value="&lt;Home /&gt; Home\n" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="1bpajm" id="1U_6cKYDCe3" role="3cqZAp" />
                                        <node concept="lc7rE" id="1U_6cKYDCe4" role="3cqZAp">
                                          <node concept="la8eA" id="1U_6cKYDCe5" role="lcghm">
                                            <property role="lacIc" value="&lt;/Link&gt;\n" />
                                          </node>
                                        </node>
                                        <node concept="1bpajm" id="1U_6cKYDBXA" role="3cqZAp" />
                                        <node concept="lc7rE" id="1U_6cKYDBY2" role="3cqZAp">
                                          <node concept="la8eA" id="1U_6cKYDBYu" role="lcghm">
                                            <property role="lacIc" value="&lt;Link href=&quot;/find-ride&quot; className=&quot;flex items-center gap-2&quot;&gt;\n" />
                                          </node>
                                        </node>
                                        <node concept="3izx1p" id="1U_6cKYDC9M" role="3cqZAp">
                                          <node concept="3clFbS" id="1U_6cKYDC9O" role="3izTki">
                                            <node concept="1bpajm" id="1U_6cKYDCab" role="3cqZAp" />
                                            <node concept="lc7rE" id="1U_6cKYDCaU" role="3cqZAp">
                                              <node concept="la8eA" id="1U_6cKYDCbm" role="lcghm">
                                                <property role="lacIc" value="&lt;Car /&gt; Find Rides\n" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="1bpajm" id="1U_6cKYDC6L" role="3cqZAp" />
                                        <node concept="lc7rE" id="1U_6cKYDC7x" role="3cqZAp">
                                          <node concept="la8eA" id="1U_6cKYDC7X" role="lcghm">
                                            <property role="lacIc" value="&lt;/Link&gt;\n" />
                                          </node>
                                        </node>
                                        <node concept="1bpajm" id="1U_6cKYDCjF" role="3cqZAp" />
                                        <node concept="lc7rE" id="1U_6cKYDCjG" role="3cqZAp">
                                          <node concept="la8eA" id="1U_6cKYDCjH" role="lcghm">
                                            <property role="lacIc" value="&lt;Link href=&quot;/add-ride&quot; className=&quot;flex items-center gap-2&quot;&gt;\n" />
                                          </node>
                                        </node>
                                        <node concept="3izx1p" id="1U_6cKYDCjI" role="3cqZAp">
                                          <node concept="3clFbS" id="1U_6cKYDCjJ" role="3izTki">
                                            <node concept="1bpajm" id="1U_6cKYDCjK" role="3cqZAp" />
                                            <node concept="lc7rE" id="1U_6cKYDCjL" role="3cqZAp">
                                              <node concept="la8eA" id="1U_6cKYDCjM" role="lcghm">
                                                <property role="lacIc" value="&lt;Plus /&gt; Add Rides\n" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="1bpajm" id="1U_6cKYDCjN" role="3cqZAp" />
                                        <node concept="lc7rE" id="1U_6cKYDCjO" role="3cqZAp">
                                          <node concept="la8eA" id="1U_6cKYDCjP" role="lcghm">
                                            <property role="lacIc" value="&lt;/Link&gt;\n" />
                                          </node>
                                        </node>
                                        <node concept="1bpajm" id="1U_6cKYDCnW" role="3cqZAp" />
                                        <node concept="lc7rE" id="1U_6cKYDCnX" role="3cqZAp">
                                          <node concept="la8eA" id="1U_6cKYDCnY" role="lcghm">
                                            <property role="lacIc" value="&lt;Link href=&quot;/profile&quot; className=&quot;flex items-center gap-2&quot;&gt;\n" />
                                          </node>
                                        </node>
                                        <node concept="3izx1p" id="1U_6cKYDCnZ" role="3cqZAp">
                                          <node concept="3clFbS" id="1U_6cKYDCo0" role="3izTki">
                                            <node concept="1bpajm" id="1U_6cKYDCo1" role="3cqZAp" />
                                            <node concept="lc7rE" id="1U_6cKYDCo2" role="3cqZAp">
                                              <node concept="la8eA" id="1U_6cKYDCo3" role="lcghm">
                                                <property role="lacIc" value="&lt;User /&gt; Profile\n" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="1bpajm" id="1U_6cKYDCo4" role="3cqZAp" />
                                        <node concept="lc7rE" id="1U_6cKYDCo5" role="3cqZAp">
                                          <node concept="la8eA" id="1U_6cKYDCo6" role="lcghm">
                                            <property role="lacIc" value="&lt;/Link&gt;\n" />
                                          </node>
                                        </node>
                                        <node concept="3clFbH" id="1U_6cKYDCjl" role="3cqZAp" />
                                      </node>
                                    </node>
                                    <node concept="1bpajm" id="1U_6cKYECDO" role="3cqZAp" />
                                    <node concept="lc7rE" id="1U_6cKYDBUU" role="3cqZAp">
                                      <node concept="la8eA" id="1U_6cKYDBVm" role="lcghm">
                                        <property role="lacIc" value="&lt;/div&gt;\n" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="1bpajm" id="1U_6cKYDBtJ" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYDBuv" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYDBuV" role="lcghm">
                                    <property role="lacIc" value="&lt;/SheetHeader&gt;\n" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1bpajm" id="1U_6cKYCpxI" role="3cqZAp" />
                            <node concept="lc7rE" id="1U_6cKYBQUV" role="3cqZAp">
                              <node concept="la8eA" id="1U_6cKYBQVn" role="lcghm">
                                <property role="lacIc" value="&lt;/SheetContent&gt;\n" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1bpajm" id="1U_6cKYBPcn" role="3cqZAp" />
                        <node concept="lc7rE" id="1U_6cKYBPd7" role="3cqZAp">
                          <node concept="la8eA" id="1U_6cKYBPdz" role="lcghm">
                            <property role="lacIc" value="&lt;/Sheet&gt;\n" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1bpajm" id="1U_6cKYBP8e" role="3cqZAp" />
                    <node concept="lc7rE" id="1U_6cKYBnAp" role="3cqZAp">
                      <node concept="la8eA" id="1U_6cKYBnAP" role="lcghm">
                        <property role="lacIc" value="&lt;/div&gt;\n" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1bpajm" id="1U_6cKYBn$x" role="3cqZAp" />
                <node concept="lc7rE" id="1U_6cKYBnyB" role="3cqZAp">
                  <node concept="la8eA" id="1U_6cKYBnz3" role="lcghm">
                    <property role="lacIc" value=");\n" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1bpajm" id="1U_6cKYBnvA" role="3cqZAp" />
            <node concept="lc7rE" id="1U_6cKYBnpf" role="3cqZAp">
              <node concept="la8eA" id="1U_6cKYBnpF" role="lcghm">
                <property role="lacIc" value="};\n" />
              </node>
            </node>
            <node concept="lc7rE" id="1U_6cKYBnrw" role="3cqZAp">
              <node concept="la8eA" id="1U_6cKYBnrW" role="lcghm">
                <property role="lacIc" value="export default Sidebar;\n" />
              </node>
            </node>
            <node concept="lc7rE" id="1U_6cKYAPLI" role="3cqZAp">
              <node concept="la8eA" id="1U_6cKYAPMa" role="lcghm">
                <property role="lacIc" value="// end sidebar.tsx in Components\n" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="1U_6cKYD5iv" role="3clFbw">
            <node concept="2OqwBi" id="1U_6cKYD6N1" role="3uHU7w">
              <node concept="2OqwBi" id="1U_6cKYD5sa" role="2Oq$k0">
                <node concept="117lpO" id="1U_6cKYD5jt" role="2Oq$k0" />
                <node concept="3TrcHB" id="1U_6cKYD5LP" role="2OqNvi">
                  <ref role="3TsBF5" to="n245:68Oe3VTYSHL" resolve="appMenuPosition" />
                </node>
              </node>
              <node concept="3y1jeu" id="1U_6cKYD7uH" role="2OqNvi">
                <node concept="Xl_RD" id="1U_6cKYD7vU" role="3y1jev">
                  <property role="Xl_RC" value="left" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1U_6cKYCX3C" role="3uHU7B">
              <node concept="2OqwBi" id="1U_6cKYAMA3" role="2Oq$k0">
                <node concept="117lpO" id="1U_6cKYAMtL" role="2Oq$k0" />
                <node concept="3TrcHB" id="1U_6cKYAMU7" role="2OqNvi">
                  <ref role="3TsBF5" to="n245:68Oe3VTYSHL" resolve="appMenuPosition" />
                </node>
              </node>
              <node concept="3y1jeu" id="1U_6cKYCYGL" role="2OqNvi">
                <node concept="Xl_RD" id="1U_6cKYCYJv" role="3y1jev">
                  <property role="Xl_RC" value="right" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="1U_6cKY_yPv" role="3cqZAp">
          <node concept="l9S2W" id="1U_6cKY_Ez0" role="lcghm">
            <node concept="2OqwBi" id="1U_6cKY_EE8" role="lbANJ">
              <node concept="117lpO" id="1U_6cKY_Ezq" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1U_6cKY_EX1" role="2OqNvi">
                <ref role="3TtcxE" to="n245:68Oe3VU1IXs" resolve="appRender" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="1U_6cKY_$FN">
    <ref role="WuzLi" to="n245:68Oe3VU1ruh" resolve="AppRender" />
    <node concept="11bSqf" id="1U_6cKY_$FO" role="11c4hB">
      <node concept="3clFbS" id="1U_6cKY_$FP" role="2VODD2">
        <node concept="3clFbJ" id="1U_6cKYAany" role="3cqZAp">
          <node concept="3clFbS" id="1U_6cKYAan$" role="3clFbx">
            <node concept="lc7rE" id="1U_6cKYAi$X" role="3cqZAp">
              <node concept="la8eA" id="1U_6cKYAi_p" role="lcghm">
                <property role="lacIc" value="Home\n" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1U_6cKYAhg6" role="3clFbw">
            <node concept="2OqwBi" id="1U_6cKYAeF4" role="2Oq$k0">
              <node concept="2OqwBi" id="1U_6cKYAecS" role="2Oq$k0">
                <node concept="117lpO" id="1U_6cKYAao2" role="2Oq$k0" />
                <node concept="3TrEf2" id="1U_6cKYAevM" role="2OqNvi">
                  <ref role="3Tt5mk" to="n245:68Oe3VU1ruk" resolve="componentName" />
                </node>
              </node>
              <node concept="3TrcHB" id="1U_6cKYAfKi" role="2OqNvi">
                <ref role="3TsBF5" to="n245:68Oe3VU02IS" resolve="componentName" />
              </node>
            </node>
            <node concept="3y1jeu" id="1U_6cKYAixQ" role="2OqNvi">
              <node concept="Xl_RD" id="1U_6cKYAiyF" role="3y1jev">
                <property role="Xl_RC" value="Home" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1U_6cKYF8Yh" role="3cqZAp">
          <node concept="3clFbS" id="1U_6cKYF8Yj" role="3clFbx">
            <node concept="lc7rE" id="1U_6cKYHDXX" role="3cqZAp">
              <node concept="la8eA" id="1U_6cKYHE5g" role="lcghm">
                <property role="lacIc" value="\n\n// find-ride page\n" />
              </node>
            </node>
            <node concept="lc7rE" id="1U_6cKYHFfZ" role="3cqZAp">
              <node concept="la8eA" id="1U_6cKYHFni" role="lcghm">
                <property role="lacIc" value="return (\n" />
              </node>
            </node>
            <node concept="3izx1p" id="1U_6cKYHGLi" role="3cqZAp">
              <node concept="3clFbS" id="1U_6cKYHGLk" role="3izTki">
                <node concept="1bpajm" id="1U_6cKYHGSy" role="3cqZAp" />
                <node concept="lc7rE" id="1U_6cKYHGTh" role="3cqZAp">
                  <node concept="la8eA" id="1U_6cKYHGTH" role="lcghm">
                    <property role="lacIc" value="&lt;&gt;\n" />
                  </node>
                </node>
                <node concept="3izx1p" id="1U_6cKYHHtE" role="3cqZAp">
                  <node concept="3clFbS" id="1U_6cKYHHtG" role="3izTki">
                    <node concept="1bpajm" id="1U_6cKYHHu3" role="3cqZAp" />
                    <node concept="lc7rE" id="1U_6cKYHHuM" role="3cqZAp">
                      <node concept="la8eA" id="1U_6cKYHHve" role="lcghm">
                        <property role="lacIc" value="&lt;div className=&quot;mx-auto max-w-7xl px-6&quot;&gt;\n" />
                      </node>
                    </node>
                    <node concept="3izx1p" id="1U_6cKYHHBE" role="3cqZAp">
                      <node concept="3clFbS" id="1U_6cKYHHBG" role="3izTki">
                        <node concept="1bpajm" id="1U_6cKYHHC3" role="3cqZAp" />
                        <node concept="lc7rE" id="1U_6cKYHHCM" role="3cqZAp">
                          <node concept="la8eA" id="1U_6cKYHHDe" role="lcghm">
                            <property role="lacIc" value="&lt;h1 className=&quot;mb-8 text-3xl font-bold&quot;&gt;Available Rides&lt;/h1&gt;\n" />
                          </node>
                        </node>
                        <node concept="1bpajm" id="1U_6cKYIlRR" role="3cqZAp" />
                        <node concept="lc7rE" id="1U_6cKYHHMf" role="3cqZAp">
                          <node concept="la8eA" id="1U_6cKYHHMF" role="lcghm">
                            <property role="lacIc" value="&lt;div className=&quot;grid grid-cols-2 gap-8&quot;&gt;\n" />
                          </node>
                        </node>
                        <node concept="3izx1p" id="1U_6cKYHHTk" role="3cqZAp">
                          <node concept="3clFbS" id="1U_6cKYHHTm" role="3izTki">
                            <node concept="3clFbJ" id="1U_6cKYHHUs" role="3cqZAp">
                              <node concept="3clFbS" id="1U_6cKYHHUt" role="3clFbx">
                                <node concept="1bpajm" id="1U_6cKYIlTZ" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYHHUu" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYHIT9" role="lcghm">
                                    <property role="lacIc" value="&lt;FindARide onFilter={handleFilter} /&gt;\n" />
                                  </node>
                                </node>
                                <node concept="1bpajm" id="1U_6cKYK9ou" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYK9ov" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYK9ow" role="lcghm">
                                    <property role="lacIc" value="&lt;RideList \n" />
                                  </node>
                                </node>
                                <node concept="1bpajm" id="1U_6cKYK9ox" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYK9oy" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYK9oz" role="lcghm">
                                    <property role="lacIc" value="rides={filteredRides}\n" />
                                  </node>
                                </node>
                                <node concept="1bpajm" id="1U_6cKYK9o$" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYK9o_" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYK9oA" role="lcghm">
                                    <property role="lacIc" value="onUpdateRide={onUpdateRide}\n" />
                                  </node>
                                </node>
                                <node concept="1bpajm" id="1U_6cKYK9oB" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYK9oC" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYK9oD" role="lcghm">
                                    <property role="lacIc" value="userId={session?.user?.id}\n" />
                                  </node>
                                </node>
                                <node concept="1bpajm" id="1U_6cKYK9oE" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYK9oF" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYK9oG" role="lcghm">
                                    <property role="lacIc" value="/&gt;\n" />
                                  </node>
                                </node>
                                <node concept="3clFbH" id="1U_6cKYK9o8" role="3cqZAp" />
                              </node>
                              <node concept="3clFbC" id="1U_6cKYHHUw" role="3clFbw">
                                <node concept="Xl_RD" id="1U_6cKYHHUx" role="3uHU7w">
                                  <property role="Xl_RC" value="card" />
                                </node>
                                <node concept="2OqwBi" id="1U_6cKYHHUy" role="3uHU7B">
                                  <node concept="2OqwBi" id="1U_6cKYHHUz" role="2Oq$k0">
                                    <node concept="2OqwBi" id="1U_6cKYHHU$" role="2Oq$k0">
                                      <node concept="117lpO" id="1U_6cKYHHU_" role="2Oq$k0" />
                                      <node concept="3Tsc0h" id="1U_6cKYHHUA" role="2OqNvi">
                                        <ref role="3TtcxE" to="n245:1n19hHk1aOl" />
                                      </node>
                                    </node>
                                    <node concept="1yVyf7" id="1U_6cKYHHUB" role="2OqNvi" />
                                  </node>
                                  <node concept="2qgKlT" id="1U_6cKYHHUC" role="2OqNvi">
                                    <ref role="37wK5l" to="tpcu:22G2W3WJ92t" resolve="getDetailedPresentation" />
                                  </node>
                                </node>
                              </node>
                              <node concept="9aQIb" id="1U_6cKYHIR2" role="9aQIa">
                                <node concept="3clFbS" id="1U_6cKYHIR3" role="9aQI4">
                                  <node concept="1bpajm" id="1U_6cKYIlVW" role="3cqZAp" />
                                  <node concept="lc7rE" id="1U_6cKYK937" role="3cqZAp">
                                    <node concept="la8eA" id="1U_6cKYK93z" role="lcghm">
                                      <property role="lacIc" value="&lt;RideList \n" />
                                    </node>
                                  </node>
                                  <node concept="1bpajm" id="1U_6cKYK95o" role="3cqZAp" />
                                  <node concept="lc7rE" id="1U_6cKYK968" role="3cqZAp">
                                    <node concept="la8eA" id="1U_6cKYK96$" role="lcghm">
                                      <property role="lacIc" value="rides={filteredRides}\n" />
                                    </node>
                                  </node>
                                  <node concept="1bpajm" id="1U_6cKYK997" role="3cqZAp" />
                                  <node concept="lc7rE" id="1U_6cKYK99R" role="3cqZAp">
                                    <node concept="la8eA" id="1U_6cKYK9aj" role="lcghm">
                                      <property role="lacIc" value="onUpdateRide={onUpdateRide}\n" />
                                    </node>
                                  </node>
                                  <node concept="1bpajm" id="1U_6cKYK9dx" role="3cqZAp" />
                                  <node concept="lc7rE" id="1U_6cKYK9eW" role="3cqZAp">
                                    <node concept="la8eA" id="1U_6cKYK9fo" role="lcghm">
                                      <property role="lacIc" value="userId={session?.user?.id}\n" />
                                    </node>
                                  </node>
                                  <node concept="1bpajm" id="1U_6cKYK9ii" role="3cqZAp" />
                                  <node concept="lc7rE" id="1U_6cKYK9j2" role="3cqZAp">
                                    <node concept="la8eA" id="1U_6cKYK9ju" role="lcghm">
                                      <property role="lacIc" value="/&gt;\n" />
                                    </node>
                                  </node>
                                  <node concept="1bpajm" id="1U_6cKYIlWG" role="3cqZAp" />
                                  <node concept="lc7rE" id="1U_6cKYHJ9p" role="3cqZAp">
                                    <node concept="la8eA" id="1U_6cKYHJ9P" role="lcghm">
                                      <property role="lacIc" value="&lt;FindARide onFilter={handleFilter} /&gt;\n" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1bpajm" id="1U_6cKYHHQj" role="3cqZAp" />
                        <node concept="lc7rE" id="1U_6cKYHHR3" role="3cqZAp">
                          <node concept="la8eA" id="1U_6cKYHHRv" role="lcghm">
                            <property role="lacIc" value="&lt;/div&gt;\n" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1bpajm" id="1U_6cKYHH$D" role="3cqZAp" />
                    <node concept="lc7rE" id="1U_6cKYHH_p" role="3cqZAp">
                      <node concept="la8eA" id="1U_6cKYHH_P" role="lcghm">
                        <property role="lacIc" value="&lt;/div&gt;\n" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1bpajm" id="1U_6cKYHGVb" role="3cqZAp" />
                <node concept="lc7rE" id="1U_6cKYHGVB" role="3cqZAp">
                  <node concept="la8eA" id="1U_6cKYHGW3" role="lcghm">
                    <property role="lacIc" value="&lt;/&gt;\n" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1bpajm" id="1U_6cKYHH4o" role="3cqZAp" />
            <node concept="lc7rE" id="1U_6cKYHHiQ" role="3cqZAp">
              <node concept="la8eA" id="1U_6cKYHHq9" role="lcghm">
                <property role="lacIc" value=");\n" />
              </node>
            </node>
            <node concept="lc7rE" id="1U_6cKYKFLM" role="3cqZAp">
              <node concept="la8eA" id="1U_6cKYKGDa" role="lcghm">
                <property role="lacIc" value="// end  find-ride page \n\n\n" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1U_6cKYFbr0" role="3clFbw">
            <node concept="2OqwBi" id="1U_6cKYF9LH" role="2Oq$k0">
              <node concept="2OqwBi" id="1U_6cKYF9br" role="2Oq$k0">
                <node concept="117lpO" id="1U_6cKYF939" role="2Oq$k0" />
                <node concept="3TrEf2" id="1U_6cKYF9w4" role="2OqNvi">
                  <ref role="3Tt5mk" to="n245:68Oe3VU1ruk" resolve="componentName" />
                </node>
              </node>
              <node concept="3TrcHB" id="1U_6cKYFabL" role="2OqNvi">
                <ref role="3TsBF5" to="n245:68Oe3VU02IS" resolve="componentName" />
              </node>
            </node>
            <node concept="3y1jeu" id="1U_6cKYFcGK" role="2OqNvi">
              <node concept="Xl_RD" id="1U_6cKYFcLx" role="3y1jev">
                <property role="Xl_RC" value="FindARide" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1U_6cKYJv2j" role="3cqZAp">
          <node concept="3clFbS" id="1U_6cKYJv2l" role="3clFbx">
            <node concept="lc7rE" id="1U_6cKYLfHN" role="3cqZAp">
              <node concept="la8eA" id="1U_6cKYLfIf" role="lcghm">
                <property role="lacIc" value="// start Profile page\n" />
              </node>
            </node>
            <node concept="lc7rE" id="1U_6cKYLfOv" role="3cqZAp">
              <node concept="la8eA" id="1U_6cKYLfOV" role="lcghm">
                <property role="lacIc" value="return (\n" />
              </node>
            </node>
            <node concept="3izx1p" id="1U_6cKYLfXO" role="3cqZAp">
              <node concept="3clFbS" id="1U_6cKYLfXQ" role="3izTki">
                <node concept="1bpajm" id="1U_6cKYLfYd" role="3cqZAp" />
                <node concept="lc7rE" id="1U_6cKYLg0y" role="3cqZAp">
                  <node concept="la8eA" id="1U_6cKYLg0Y" role="lcghm">
                    <property role="lacIc" value="&lt;div className=&quot;container mx-auto&quot;&gt;\n" />
                  </node>
                </node>
                <node concept="3izx1p" id="1U_6cKYLg6y" role="3cqZAp">
                  <node concept="3clFbS" id="1U_6cKYLg6$" role="3izTki">
                    <node concept="1bpajm" id="1U_6cKYLg6V" role="3cqZAp" />
                    <node concept="lc7rE" id="1U_6cKYLg7E" role="3cqZAp">
                      <node concept="la8eA" id="1U_6cKYLg86" role="lcghm">
                        <property role="lacIc" value="&lt;div className=&quot;mx-auto max-w-4xl&quot;&gt;\n" />
                      </node>
                    </node>
                    <node concept="3izx1p" id="1U_6cKYLgfO" role="3cqZAp">
                      <node concept="3clFbS" id="1U_6cKYLgfQ" role="3izTki">
                        <node concept="1bpajm" id="1U_6cKYLggd" role="3cqZAp" />
                        <node concept="lc7rE" id="1U_6cKYLggW" role="3cqZAp">
                          <node concept="la8eA" id="1U_6cKYLgho" role="lcghm">
                            <property role="lacIc" value="&lt;div className=&quot;mb-8 flex items-center gap-6&quot;&gt;\n" />
                          </node>
                        </node>
                        <node concept="3izx1p" id="1U_6cKYLgoJ" role="3cqZAp">
                          <node concept="3clFbS" id="1U_6cKYLgoL" role="3izTki">
                            <node concept="1bpajm" id="1U_6cKYLgp8" role="3cqZAp" />
                            <node concept="lc7rE" id="1U_6cKYLgpz" role="3cqZAp">
                              <node concept="la8eA" id="1U_6cKYLgpZ" role="lcghm">
                                <property role="lacIc" value="&lt;Avatar className=&quot;h-24 w-24&quot;&gt;\n" />
                              </node>
                            </node>
                            <node concept="3izx1p" id="1U_6cKYLgxH" role="3cqZAp">
                              <node concept="3clFbS" id="1U_6cKYLgxJ" role="3izTki">
                                <node concept="1bpajm" id="1U_6cKYLgy6" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYLgyP" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYLgzh" role="lcghm">
                                    <property role="lacIc" value="&lt;User className=&quot;h-12 w-12&quot; /&gt;\n" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1bpajm" id="1U_6cKYMmEF" role="3cqZAp" />
                            <node concept="lc7rE" id="1U_6cKYLgvN" role="3cqZAp">
                              <node concept="la8eA" id="1U_6cKYLgwf" role="lcghm">
                                <property role="lacIc" value="&lt;/Avatar&gt;\n" />
                              </node>
                            </node>
                            <node concept="1bpajm" id="1U_6cKYLgAb" role="3cqZAp" />
                            <node concept="lc7rE" id="1U_6cKYLgAV" role="3cqZAp">
                              <node concept="la8eA" id="1U_6cKYLgBn" role="lcghm">
                                <property role="lacIc" value="&lt;div&gt;\n" />
                              </node>
                            </node>
                            <node concept="3izx1p" id="1U_6cKYLgGV" role="3cqZAp">
                              <node concept="3clFbS" id="1U_6cKYLgGX" role="3izTki">
                                <node concept="1bpajm" id="1U_6cKYLgHk" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYLgI3" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYLgIv" role="lcghm">
                                    <property role="lacIc" value="&lt;h1 className=&quot;text-3xl font-bold text-foreground&quot;&gt;\n" />
                                  </node>
                                </node>
                                <node concept="3izx1p" id="1U_6cKYLgQ$" role="3cqZAp">
                                  <node concept="3clFbS" id="1U_6cKYLgQA" role="3izTki">
                                    <node concept="1bpajm" id="1U_6cKYLgRj" role="3cqZAp" />
                                    <node concept="lc7rE" id="1U_6cKYLgS3" role="3cqZAp">
                                      <node concept="la8eA" id="1U_6cKYLgSv" role="lcghm">
                                        <property role="lacIc" value="{session?.user.name} {session?.user.surname}\n" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="1bpajm" id="1U_6cKYLgNU" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYLgOE" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYLgP6" role="lcghm">
                                    <property role="lacIc" value="&lt;/h1&gt;\n" />
                                  </node>
                                </node>
                                <node concept="1bpajm" id="1U_6cKYLh0R" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYLh1B" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYLh23" role="lcghm">
                                    <property role="lacIc" value="&lt;p className=&quot;text-muted-foreground&quot;&gt;@{session?.user.username}&lt;/p&gt;\n" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1bpajm" id="1U_6cKYLgCP" role="3cqZAp" />
                            <node concept="lc7rE" id="1U_6cKYLgD_" role="3cqZAp">
                              <node concept="la8eA" id="1U_6cKYLgE1" role="lcghm">
                                <property role="lacIc" value="&lt;/div&gt;\n" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1bpajm" id="1U_6cKYLgms" role="3cqZAp" />
                        <node concept="lc7rE" id="1U_6cKYLgnc" role="3cqZAp">
                          <node concept="la8eA" id="1U_6cKYLgnC" role="lcghm">
                            <property role="lacIc" value="&lt;/div&gt;\n" />
                          </node>
                        </node>
                        <node concept="1bpajm" id="1U_6cKYMTmB" role="3cqZAp" />
                        <node concept="lc7rE" id="1U_6cKYOfJq" role="3cqZAp">
                          <node concept="la8eA" id="1U_6cKYOfQ4" role="lcghm">
                            <property role="lacIc" value="&lt;Tabs defaultValue=&quot;profile&quot; className=&quot;space-y-6&quot;&gt;\n" />
                          </node>
                        </node>
                        <node concept="3izx1p" id="1U_6cKYOg1b" role="3cqZAp">
                          <node concept="3clFbS" id="1U_6cKYOg1d" role="3izTki">
                            <node concept="1bpajm" id="1U_6cKYOg2B" role="3cqZAp" />
                            <node concept="lc7rE" id="1U_6cKYOg3m" role="3cqZAp">
                              <node concept="la8eA" id="1U_6cKYOg3M" role="lcghm">
                                <property role="lacIc" value="&lt;TabsList&gt;\n" />
                              </node>
                            </node>
                            <node concept="3izx1p" id="1U_6cKYOg9H" role="3cqZAp">
                              <node concept="3clFbS" id="1U_6cKYOg9J" role="3izTki">
                                <node concept="1bpajm" id="1U_6cKYOga6" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYOgaP" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYOgbh" role="lcghm">
                                    <property role="lacIc" value="&lt;TabsTrigger value=&quot;profile&quot;&gt;Profile&lt;/TabsTrigger&gt;\n" />
                                  </node>
                                </node>
                                <node concept="lc7rE" id="1U_6cKYOggn" role="3cqZAp">
                                  <node concept="l9hG8" id="1U_6cKYOggN" role="lcghm">
                                    <node concept="2OqwBi" id="1U_6cKYOj3K" role="lb14g">
                                      <node concept="2OqwBi" id="1U_6cKYOgqp" role="2Oq$k0">
                                        <node concept="117lpO" id="1U_6cKYOghk" role="2Oq$k0" />
                                        <node concept="3Tsc0h" id="1U_6cKYOgIv" role="2OqNvi">
                                          <ref role="3TtcxE" to="n245:1n19hHk1aOl" resolve="listOfChildRenders" />
                                        </node>
                                      </node>
                                      <node concept="1yVyf7" id="1U_6cKYOmbQ" role="2OqNvi" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1bpajm" id="1U_6cKYUu8x" role="3cqZAp" />
                        <node concept="lc7rE" id="1U_6cKYUua0" role="3cqZAp">
                          <node concept="la8eA" id="1U_6cKYUubv" role="lcghm">
                            <property role="lacIc" value="&lt;/Tabs&gt;\n" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1bpajm" id="1U_6cKYLgcN" role="3cqZAp" />
                    <node concept="lc7rE" id="1U_6cKYLgdz" role="3cqZAp">
                      <node concept="la8eA" id="1U_6cKYLgdZ" role="lcghm">
                        <property role="lacIc" value="&lt;/div&gt;\n" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1bpajm" id="1U_6cKYLg3x" role="3cqZAp" />
                <node concept="lc7rE" id="1U_6cKYLg4h" role="3cqZAp">
                  <node concept="la8eA" id="1U_6cKYLg4H" role="lcghm">
                    <property role="lacIc" value="&lt;/div&gt;\n" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="1U_6cKYLfR7" role="3cqZAp">
              <node concept="la8eA" id="1U_6cKYLfSh" role="lcghm">
                <property role="lacIc" value=");\n" />
              </node>
            </node>
            <node concept="lc7rE" id="1U_6cKYLfKM" role="3cqZAp">
              <node concept="la8eA" id="1U_6cKYLfLe" role="lcghm">
                <property role="lacIc" value="// end Profile page\n" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1U_6cKYJyQF" role="3clFbw">
            <node concept="2OqwBi" id="1U_6cKYJw8b" role="2Oq$k0">
              <node concept="2OqwBi" id="1U_6cKYJvwM" role="2Oq$k0">
                <node concept="117lpO" id="1U_6cKYJvay" role="2Oq$k0" />
                <node concept="3TrEf2" id="1U_6cKYJvU9" role="2OqNvi">
                  <ref role="3Tt5mk" to="n245:68Oe3VU1ruk" resolve="componentName" />
                </node>
              </node>
              <node concept="3TrcHB" id="1U_6cKYJxAV" role="2OqNvi">
                <ref role="3TsBF5" to="n245:68Oe3VU02IS" resolve="componentName" />
              </node>
            </node>
            <node concept="3y1jeu" id="1U_6cKYJ$dj" role="2OqNvi">
              <node concept="Xl_RD" id="1U_6cKYJ$j0" role="3y1jev">
                <property role="Xl_RC" value="Profile" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="1U_6cKYNAo_">
    <ref role="WuzLi" to="n245:6akmAI1wBi5" resolve="RenderTabs" />
    <node concept="11bSqf" id="1U_6cKYNAoA" role="11c4hB">
      <node concept="3clFbS" id="1U_6cKYNAoB" role="2VODD2">
        <node concept="lc7rE" id="1U_6cKYNAp0" role="3cqZAp">
          <node concept="l9S2W" id="1U_6cKYNC2I" role="lcghm">
            <node concept="2OqwBi" id="1U_6cKYNC3I" role="lbANJ">
              <node concept="117lpO" id="1U_6cKYNC3a" role="2Oq$k0" />
              <node concept="3Tsc0h" id="1U_6cKYNCfk" role="2OqNvi">
                <ref role="3TtcxE" to="n245:6akmAI1wBi9" resolve="list" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1bpajm" id="1U_6cKYTN3b" role="3cqZAp" />
        <node concept="lc7rE" id="1U_6cKYQ2jf" role="3cqZAp">
          <node concept="la8eA" id="1U_6cKYQ2lL" role="lcghm">
            <property role="lacIc" value="&lt;/TabsList&gt;\n" />
          </node>
        </node>
        <node concept="2Gpval" id="1U_6cKYRkl1" role="3cqZAp">
          <node concept="2GrKxI" id="1U_6cKYRkl3" role="2Gsz3X">
            <property role="TrG5h" value="l" />
          </node>
          <node concept="2OqwBi" id="1U_6cKYRkux" role="2GsD0m">
            <node concept="117lpO" id="1U_6cKYRkm4" role="2Oq$k0" />
            <node concept="3Tsc0h" id="1U_6cKYRkKP" role="2OqNvi">
              <ref role="3TtcxE" to="n245:6akmAI1wBi9" resolve="list" />
            </node>
          </node>
          <node concept="3clFbS" id="1U_6cKYRkl7" role="2LFqv$">
            <node concept="2Gpval" id="1U_6cKYRkNa" role="3cqZAp">
              <node concept="2GrKxI" id="1U_6cKYRkNb" role="2Gsz3X">
                <property role="TrG5h" value="row" />
              </node>
              <node concept="2OqwBi" id="1U_6cKYRkWH" role="2GsD0m">
                <node concept="2GrUjf" id="1U_6cKYRkOg" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1U_6cKYRkl3" resolve="l" />
                </node>
                <node concept="3Tsc0h" id="1U_6cKYRlBg" role="2OqNvi">
                  <ref role="3TtcxE" to="n245:6akmAI1wBiP" resolve="rows" />
                </node>
              </node>
              <node concept="3clFbS" id="1U_6cKYRkNd" role="2LFqv$">
                <node concept="3clFbJ" id="1U_6cKYRlHt" role="3cqZAp">
                  <node concept="2OqwBi" id="1U_6cKYRo2R" role="3clFbw">
                    <node concept="2OqwBi" id="1U_6cKYRm5x" role="2Oq$k0">
                      <node concept="2GrUjf" id="1U_6cKYRlHV" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="1U_6cKYRkNb" resolve="row" />
                      </node>
                      <node concept="3TrcHB" id="1U_6cKYRmx2" role="2OqNvi">
                        <ref role="3TsBF5" to="n245:6akmAI1wBiN" resolve="value" />
                      </node>
                    </node>
                    <node concept="3y1jeu" id="1U_6cKYRpmQ" role="2OqNvi">
                      <node concept="Xl_RD" id="1U_6cKYRpxk" role="3y1jev">
                        <property role="Xl_RC" value="cars" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="1U_6cKYRlHv" role="3clFbx">
                    <node concept="1bpajm" id="1U_6cKYRpEk" role="3cqZAp" />
                    <node concept="lc7rE" id="1U_6cKYRpF3" role="3cqZAp">
                      <node concept="la8eA" id="1U_6cKYRpFv" role="lcghm">
                        <property role="lacIc" value="&lt;TabsContent value=&quot;" />
                      </node>
                    </node>
                    <node concept="lc7rE" id="1U_6cKYRpJ9" role="3cqZAp">
                      <node concept="l9hG8" id="1U_6cKYRpL2" role="lcghm">
                        <node concept="2OqwBi" id="1U_6cKYRpSq" role="lb14g">
                          <node concept="2GrUjf" id="1U_6cKYRpLx" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="1U_6cKYRkNb" resolve="row" />
                          </node>
                          <node concept="3TrcHB" id="1U_6cKYRqGb" role="2OqNvi">
                            <ref role="3TsBF5" to="n245:6akmAI1wBiN" resolve="value" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="lc7rE" id="1U_6cKYRqMd" role="3cqZAp">
                      <node concept="la8eA" id="1U_6cKYRqMD" role="lcghm">
                        <property role="lacIc" value="&quot;&gt;\n" />
                      </node>
                    </node>
                    <node concept="3izx1p" id="1U_6cKYRqOu" role="3cqZAp">
                      <node concept="3clFbS" id="1U_6cKYRqOw" role="3izTki">
                        <node concept="1bpajm" id="1U_6cKYRqP_" role="3cqZAp" />
                        <node concept="lc7rE" id="1U_6cKYRqQk" role="3cqZAp">
                          <node concept="la8eA" id="1U_6cKYRqUv" role="lcghm">
                            <property role="lacIc" value="&lt;Card className=&quot;p-6&quot;&gt;\n" />
                          </node>
                        </node>
                        <node concept="3izx1p" id="1U_6cKYRr1v" role="3cqZAp">
                          <node concept="3clFbS" id="1U_6cKYRr1x" role="3izTki">
                            <node concept="1bpajm" id="1U_6cKYRr1S" role="3cqZAp" />
                            <node concept="lc7rE" id="1U_6cKYRr2B" role="3cqZAp">
                              <node concept="la8eA" id="1U_6cKYRr33" role="lcghm">
                                <property role="lacIc" value="&lt;div className=&quot;mb-6 flex items-center justify-between&quot;&gt;\n" />
                              </node>
                            </node>
                            <node concept="3izx1p" id="1U_6cKYRrjf" role="3cqZAp">
                              <node concept="3clFbS" id="1U_6cKYRrjh" role="3izTki">
                                <node concept="1bpajm" id="1U_6cKYRrjC" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYRrkn" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYRrkN" role="lcghm">
                                    <property role="lacIc" value="&lt;h2 className=&quot;flex items-center gap-2 text-xl font-semibold&quot;&gt;\n" />
                                  </node>
                                </node>
                                <node concept="3izx1p" id="1U_6cKYRruk" role="3cqZAp">
                                  <node concept="3clFbS" id="1U_6cKYRrum" role="3izTki">
                                    <node concept="1bpajm" id="1U_6cKYRruH" role="3cqZAp" />
                                    <node concept="lc7rE" id="1U_6cKYRrvs" role="3cqZAp">
                                      <node concept="la8eA" id="1U_6cKYRrvS" role="lcghm">
                                        <property role="lacIc" value="&lt;Car className=&quot;h-5 w-5&quot; /&gt;\n" />
                                      </node>
                                    </node>
                                    <node concept="1bpajm" id="1U_6cKYRrzw" role="3cqZAp" />
                                    <node concept="lc7rE" id="1U_6cKYTO6L" role="3cqZAp">
                                      <node concept="l9hG8" id="1U_6cKYTO7W" role="lcghm">
                                        <node concept="2OqwBi" id="1U_6cKYTOhw" role="lb14g">
                                          <node concept="2GrUjf" id="1U_6cKYTO8r" role="2Oq$k0">
                                            <ref role="2Gs0qQ" node="1U_6cKYRkNb" resolve="row" />
                                          </node>
                                          <node concept="3TrcHB" id="1U_6cKYTOKN" role="2OqNvi">
                                            <ref role="3TsBF5" to="n245:6akmAI1wBiO" resolve="label" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="lc7rE" id="1U_6cKYRr$g" role="3cqZAp">
                                      <node concept="la8eA" id="1U_6cKYRr$G" role="lcghm">
                                        <property role="lacIc" value="\n" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="1bpajm" id="1U_6cKYRrpR" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYRrqB" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYRrr3" role="lcghm">
                                    <property role="lacIc" value="&lt;/h2&gt;\n" />
                                  </node>
                                </node>
                                <node concept="1bpajm" id="1U_6cKYRxKB" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYRrAx" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYRrAX" role="lcghm">
                                    <property role="lacIc" value="&lt;Link href=&quot;/add-car&quot;&gt;\n" />
                                  </node>
                                </node>
                                <node concept="3izx1p" id="1U_6cKYRrG8" role="3cqZAp">
                                  <node concept="3clFbS" id="1U_6cKYRrGa" role="3izTki">
                                    <node concept="1bpajm" id="1U_6cKYRrGx" role="3cqZAp" />
                                    <node concept="lc7rE" id="1U_6cKYRrGW" role="3cqZAp">
                                      <node concept="la8eA" id="1U_6cKYRrHo" role="lcghm">
                                        <property role="lacIc" value="&lt;Button&gt;\n" />
                                      </node>
                                    </node>
                                    <node concept="3izx1p" id="1U_6cKYRrLz" role="3cqZAp">
                                      <node concept="3clFbS" id="1U_6cKYRrL_" role="3izTki">
                                        <node concept="1bpajm" id="1U_6cKYRrLY" role="3cqZAp" />
                                        <node concept="lc7rE" id="1U_6cKYRrMq" role="3cqZAp">
                                          <node concept="la8eA" id="1U_6cKYRrMv" role="lcghm">
                                            <property role="lacIc" value="&lt;Car className=&quot;mr-2 h-4 w-4&quot; /&gt;\n" />
                                          </node>
                                        </node>
                                        <node concept="1bpajm" id="1U_6cKYS6KQ" role="3cqZAp" />
                                        <node concept="lc7rE" id="1U_6cKYRrPK" role="3cqZAp">
                                          <node concept="la8eA" id="1U_6cKYRrQc" role="lcghm">
                                            <property role="lacIc" value="Add new car\n" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="1bpajm" id="1U_6cKYRrJ$" role="3cqZAp" />
                                    <node concept="lc7rE" id="1U_6cKYRrK0" role="3cqZAp">
                                      <node concept="la8eA" id="1U_6cKYRrKs" role="lcghm">
                                        <property role="lacIc" value="&lt;/Button&gt;\n" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="1bpajm" id="1U_6cKYRxM7" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYRrDR" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYRrEj" role="lcghm">
                                    <property role="lacIc" value="&lt;/Link&gt;\n" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1bpajm" id="1U_6cKYRr8u" role="3cqZAp" />
                            <node concept="lc7rE" id="1U_6cKYRr9e" role="3cqZAp">
                              <node concept="la8eA" id="1U_6cKYRr9E" role="lcghm">
                                <property role="lacIc" value="&lt;/div&gt;\n" />
                              </node>
                            </node>
                            <node concept="1bpajm" id="1U_6cKYRrc_" role="3cqZAp" />
                            <node concept="lc7rE" id="1U_6cKYRrd1" role="3cqZAp">
                              <node concept="la8eA" id="1U_6cKYRrdt" role="lcghm">
                                <property role="lacIc" value="&lt;UserCars userId={session?.user.id} /&gt;\n" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1bpajm" id="1U_6cKYRr0J" role="3cqZAp" />
                        <node concept="lc7rE" id="1U_6cKYRqYu" role="3cqZAp">
                          <node concept="la8eA" id="1U_6cKYRqYU" role="lcghm">
                            <property role="lacIc" value="&lt;/Card&gt;\n" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1bpajm" id="1U_6cKYRqR6" role="3cqZAp" />
                    <node concept="lc7rE" id="1U_6cKYRqRQ" role="3cqZAp">
                      <node concept="la8eA" id="1U_6cKYRqSi" role="lcghm">
                        <property role="lacIc" value="&lt;/TabsContent&gt;\n" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1U_6cKYTN8_" role="3cqZAp">
                  <node concept="2OqwBi" id="1U_6cKYTN8A" role="3clFbw">
                    <node concept="2OqwBi" id="1U_6cKYTN8B" role="2Oq$k0">
                      <node concept="2GrUjf" id="1U_6cKYTN8C" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="1U_6cKYRkNb" resolve="row" />
                      </node>
                      <node concept="3TrcHB" id="1U_6cKYTN8D" role="2OqNvi">
                        <ref role="3TsBF5" to="n245:6akmAI1wBiN" resolve="value" />
                      </node>
                    </node>
                    <node concept="3y1jeu" id="1U_6cKYTN8E" role="2OqNvi">
                      <node concept="Xl_RD" id="1U_6cKYTN8F" role="3y1jev">
                        <property role="Xl_RC" value="rides" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="1U_6cKYTN8G" role="3clFbx">
                    <node concept="1bpajm" id="1U_6cKYTN8H" role="3cqZAp" />
                    <node concept="lc7rE" id="1U_6cKYTN8I" role="3cqZAp">
                      <node concept="la8eA" id="1U_6cKYTN8J" role="lcghm">
                        <property role="lacIc" value="&lt;TabsContent value=&quot;" />
                      </node>
                    </node>
                    <node concept="lc7rE" id="1U_6cKYTN8K" role="3cqZAp">
                      <node concept="l9hG8" id="1U_6cKYTN8L" role="lcghm">
                        <node concept="2OqwBi" id="1U_6cKYTN8M" role="lb14g">
                          <node concept="2GrUjf" id="1U_6cKYTN8N" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="1U_6cKYRkNb" resolve="row" />
                          </node>
                          <node concept="3TrcHB" id="1U_6cKYTN8O" role="2OqNvi">
                            <ref role="3TsBF5" to="n245:6akmAI1wBiN" resolve="value" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="lc7rE" id="1U_6cKYTN8P" role="3cqZAp">
                      <node concept="la8eA" id="1U_6cKYTN8Q" role="lcghm">
                        <property role="lacIc" value="&quot;&gt;\n" />
                      </node>
                    </node>
                    <node concept="3izx1p" id="1U_6cKYTN8R" role="3cqZAp">
                      <node concept="3clFbS" id="1U_6cKYTN8S" role="3izTki">
                        <node concept="1bpajm" id="1U_6cKYTN8T" role="3cqZAp" />
                        <node concept="lc7rE" id="1U_6cKYTN8U" role="3cqZAp">
                          <node concept="la8eA" id="1U_6cKYTN8V" role="lcghm">
                            <property role="lacIc" value="&lt;Card className=&quot;p-6&quot;&gt;\n" />
                          </node>
                        </node>
                        <node concept="3izx1p" id="1U_6cKYTN8W" role="3cqZAp">
                          <node concept="3clFbS" id="1U_6cKYTN8X" role="3izTki">
                            <node concept="1bpajm" id="1U_6cKYTN8Y" role="3cqZAp" />
                            <node concept="lc7rE" id="1U_6cKYTN8Z" role="3cqZAp">
                              <node concept="la8eA" id="1U_6cKYTN90" role="lcghm">
                                <property role="lacIc" value="&lt;div className=&quot;mb-6 flex items-center justify-between&quot;&gt;\n" />
                              </node>
                            </node>
                            <node concept="3izx1p" id="1U_6cKYTN91" role="3cqZAp">
                              <node concept="3clFbS" id="1U_6cKYTN92" role="3izTki">
                                <node concept="1bpajm" id="1U_6cKYTN93" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYTN94" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYTN95" role="lcghm">
                                    <property role="lacIc" value="&lt;h2 className=&quot;flex items-center gap-2 text-xl font-semibold&quot;&gt;\n" />
                                  </node>
                                </node>
                                <node concept="3izx1p" id="1U_6cKYTN96" role="3cqZAp">
                                  <node concept="3clFbS" id="1U_6cKYTN97" role="3izTki">
                                    <node concept="1bpajm" id="1U_6cKYTN98" role="3cqZAp" />
                                    <node concept="lc7rE" id="1U_6cKYTN99" role="3cqZAp">
                                      <node concept="la8eA" id="1U_6cKYTN9a" role="lcghm">
                                        <property role="lacIc" value="&lt;Car className=&quot;h-5 w-5&quot; /&gt;\n" />
                                      </node>
                                    </node>
                                    <node concept="1bpajm" id="1U_6cKYTN9b" role="3cqZAp" />
                                    <node concept="lc7rE" id="1U_6cKYTNlk" role="3cqZAp">
                                      <node concept="l9hG8" id="1U_6cKYTNlK" role="lcghm">
                                        <node concept="2OqwBi" id="1U_6cKYTNta" role="lb14g">
                                          <node concept="2GrUjf" id="1U_6cKYTNmh" role="2Oq$k0">
                                            <ref role="2Gs0qQ" node="1U_6cKYRkNb" resolve="row" />
                                          </node>
                                          <node concept="3TrcHB" id="1U_6cKYTNWT" role="2OqNvi">
                                            <ref role="3TsBF5" to="n245:6akmAI1wBiO" resolve="label" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="lc7rE" id="1U_6cKYTO5e" role="3cqZAp">
                                      <node concept="la8eA" id="1U_6cKYTO5E" role="lcghm">
                                        <property role="lacIc" value="\n" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="1bpajm" id="1U_6cKYTN9e" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYTN9f" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYTN9g" role="lcghm">
                                    <property role="lacIc" value="&lt;/h2&gt;\n" />
                                  </node>
                                </node>
                                <node concept="1bpajm" id="1U_6cKYTN9h" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYTN9i" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYTN9j" role="lcghm">
                                    <property role="lacIc" value="&lt;Link href=&quot;/find-ride&quot;&gt;\n" />
                                  </node>
                                </node>
                                <node concept="3izx1p" id="1U_6cKYTN9k" role="3cqZAp">
                                  <node concept="3clFbS" id="1U_6cKYTN9l" role="3izTki">
                                    <node concept="1bpajm" id="1U_6cKYTN9m" role="3cqZAp" />
                                    <node concept="lc7rE" id="1U_6cKYTN9n" role="3cqZAp">
                                      <node concept="la8eA" id="1U_6cKYTN9o" role="lcghm">
                                        <property role="lacIc" value="&lt;Button&gt;\n" />
                                      </node>
                                    </node>
                                    <node concept="3izx1p" id="1U_6cKYTN9p" role="3cqZAp">
                                      <node concept="3clFbS" id="1U_6cKYTN9q" role="3izTki">
                                        <node concept="1bpajm" id="1U_6cKYTN9r" role="3cqZAp" />
                                        <node concept="lc7rE" id="1U_6cKYTN9s" role="3cqZAp">
                                          <node concept="la8eA" id="1U_6cKYTN9t" role="lcghm">
                                            <property role="lacIc" value="&lt;Car className=&quot;mr-2 h-4 w-4&quot; /&gt;\n" />
                                          </node>
                                        </node>
                                        <node concept="1bpajm" id="1U_6cKYTN9u" role="3cqZAp" />
                                        <node concept="lc7rE" id="1U_6cKYTN9v" role="3cqZAp">
                                          <node concept="la8eA" id="1U_6cKYTN9w" role="lcghm">
                                            <property role="lacIc" value="Book a Ride\n" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="1bpajm" id="1U_6cKYTN9x" role="3cqZAp" />
                                    <node concept="lc7rE" id="1U_6cKYTN9y" role="3cqZAp">
                                      <node concept="la8eA" id="1U_6cKYTN9z" role="lcghm">
                                        <property role="lacIc" value="&lt;/Button&gt;\n" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="1bpajm" id="1U_6cKYTN9$" role="3cqZAp" />
                                <node concept="lc7rE" id="1U_6cKYTN9_" role="3cqZAp">
                                  <node concept="la8eA" id="1U_6cKYTN9A" role="lcghm">
                                    <property role="lacIc" value="&lt;/Link&gt;\n" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1bpajm" id="1U_6cKYTN9B" role="3cqZAp" />
                            <node concept="lc7rE" id="1U_6cKYTN9C" role="3cqZAp">
                              <node concept="la8eA" id="1U_6cKYTN9D" role="lcghm">
                                <property role="lacIc" value="&lt;/div&gt;\n" />
                              </node>
                            </node>
                            <node concept="1bpajm" id="1U_6cKYTN9E" role="3cqZAp" />
                            <node concept="lc7rE" id="1U_6cKYTN9F" role="3cqZAp">
                              <node concept="la8eA" id="1U_6cKYTN9G" role="lcghm">
                                <property role="lacIc" value="&lt;UserCars userId={session?.user.id} /&gt;\n" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1bpajm" id="1U_6cKYTN9H" role="3cqZAp" />
                        <node concept="lc7rE" id="1U_6cKYTN9I" role="3cqZAp">
                          <node concept="la8eA" id="1U_6cKYTN9J" role="lcghm">
                            <property role="lacIc" value="&lt;/Card&gt;\n" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1bpajm" id="1U_6cKYTN9K" role="3cqZAp" />
                    <node concept="lc7rE" id="1U_6cKYTN9L" role="3cqZAp">
                      <node concept="la8eA" id="1U_6cKYTN9M" role="lcghm">
                        <property role="lacIc" value="&lt;/TabsContent&gt;\n" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1U_6cKYTN8f" role="3cqZAp" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="1U_6cKYNCiJ">
    <ref role="WuzLi" to="n245:6akmAI1wBi7" resolve="TabsList" />
    <node concept="11bSqf" id="1U_6cKYNCiK" role="11c4hB">
      <node concept="3clFbS" id="1U_6cKYNCiL" role="2VODD2">
        <node concept="2Gpval" id="1U_6cKYNCVk" role="3cqZAp">
          <node concept="2GrKxI" id="1U_6cKYNCVl" role="2Gsz3X">
            <property role="TrG5h" value="tab" />
          </node>
          <node concept="2OqwBi" id="1U_6cKYND58" role="2GsD0m">
            <node concept="117lpO" id="1U_6cKYNCWm" role="2Oq$k0" />
            <node concept="3Tsc0h" id="1U_6cKYNDrl" role="2OqNvi">
              <ref role="3TtcxE" to="n245:6akmAI1wBiP" resolve="rows" />
            </node>
          </node>
          <node concept="3clFbS" id="1U_6cKYNCVn" role="2LFqv$">
            <node concept="1bpajm" id="1U_6cKYOTEx" role="3cqZAp" />
            <node concept="lc7rE" id="1U_6cKYNDvD" role="3cqZAp">
              <node concept="la8eA" id="1U_6cKYNDw4" role="lcghm">
                <property role="lacIc" value="&lt;TabsTrigger value=&quot;" />
              </node>
            </node>
            <node concept="lc7rE" id="1U_6cKYND$s" role="3cqZAp">
              <node concept="l9hG8" id="1U_6cKYND_E" role="lcghm">
                <node concept="2OqwBi" id="1U_6cKYNDJg" role="lb14g">
                  <node concept="2GrUjf" id="1U_6cKYNDAa" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1U_6cKYNCVl" resolve="tab" />
                  </node>
                  <node concept="3TrcHB" id="1U_6cKYNE4j" role="2OqNvi">
                    <ref role="3TsBF5" to="n245:6akmAI1wBiN" resolve="value" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="1U_6cKYNEbj" role="3cqZAp">
              <node concept="la8eA" id="1U_6cKYNEbK" role="lcghm">
                <property role="lacIc" value="&quot;&gt;" />
              </node>
            </node>
            <node concept="lc7rE" id="1U_6cKYNEdg" role="3cqZAp">
              <node concept="l9hG8" id="1U_6cKYNEdH" role="lcghm">
                <node concept="2OqwBi" id="1U_6cKYNEnl" role="lb14g">
                  <node concept="2GrUjf" id="1U_6cKYNEef" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1U_6cKYNCVl" resolve="tab" />
                  </node>
                  <node concept="3TrcHB" id="1U_6cKYNEIH" role="2OqNvi">
                    <ref role="3TsBF5" to="n245:6akmAI1wBiO" resolve="label" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="lc7rE" id="1U_6cKYNEQ4" role="3cqZAp">
              <node concept="la8eA" id="1U_6cKYNEQx" role="lcghm">
                <property role="lacIc" value="&lt;/TabsTrigger&gt;\n" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="1U_6cKYNCAR">
    <ref role="WuzLi" to="n245:6akmAI1wBiL" resolve="TabsListRow" />
    <node concept="11bSqf" id="1U_6cKYNCAS" role="11c4hB">
      <node concept="3clFbS" id="1U_6cKYNCAT" role="2VODD2" />
    </node>
  </node>
</model>

