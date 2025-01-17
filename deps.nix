# generated by clj2nix-1.0.7
{ pkgs ? import <nixpkgs> {} }:

let repos = [
        "https://repo1.maven.org/maven2/"
        "https://repo.clojars.org/" ];

  in rec {
      makePaths = {extraClasspaths ? null}:
        (pkgs.lib.concatMap
          (dep:
            builtins.map
            (path:
              if builtins.isString path then
                path
              else if builtins.hasAttr "jar" path then
                path.jar
              else if builtins.hasAttr "outPath" path then
                path.outPath
              else
                path
                )
            dep.paths)
          packages)
        ++ (if extraClasspaths != null then [ extraClasspaths ] else []);
      makeClasspaths = {extraClasspaths ? null}: builtins.concatStringsSep ":" (makePaths {inherit extraClasspaths;});
      packageSources = builtins.map (dep: dep.src) packages;
      packages = [
  rec {
    name = "javax.inject/javax.inject";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "javax.inject";
      groupId = "javax.inject";
      sha512 = "e126b7ccf3e42fd1984a0beef1004a7269a337c202e59e04e8e2af714280d2f2d8d2ba5e6f59481b8dcd34aaf35c966a688d0b48ec7e96f102c274dc0d3b381e";
      version = "1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "data.json/org.clojure";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "data.json";
      groupId = "org.clojure";
      sha512 = "dfeb6fb73b29074834a7b20f305a089210a7ed321e0907a86bfa09bddd7a754d219858f6d3db9d7c78a5b10b9a46253df340474b7759ee7b2a9e4dbf93ce908c";
      version = "2.2.3";
      
    };
    paths = [ src ];
  }

  rec {
    name = "clojure/org.clojure";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "clojure";
      groupId = "org.clojure";
      sha512 = "4bb567b9262d998f554f44e677a8628b96e919bc8bcfb28ab2e80d9810f8adf8f13a8898142425d92f3515e58c57b16782cff12ba1b5ffb38b7d0ccd13d99bbc";
      version = "1.10.3";
      
    };
    paths = [ src ];
  }

  rec {
    name = "commons-codec/commons-codec";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "commons-codec";
      groupId = "commons-codec";
      sha512 = "d9586162b257386b5871e7e9ae255a38014a9efaeef5148de5e40a3b0200364dad8516bddd554352aa2e5337bec2cc11df88c76c4fdde96a40f3421aa60650d7";
      version = "1.11";
      
    };
    paths = [ src ];
  }

  rec {
    name = "api/com.cognitect.aws";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "api";
      groupId = "com.cognitect.aws";
      sha512 = "02fe132a640f91fdb430551a40775d91fda3210f45cc0c3942c3d1c2cfc5ed62a84b8375fbe95b7a04ba5348e51ec74185add881ba8b238747b58e957be1bd5d";
      version = "0.8.505";
      
    };
    paths = [ src ];
  }

  rec {
    name = "tools.analyzer/org.clojure";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.analyzer";
      groupId = "org.clojure";
      sha512 = "e02d7baec926e0e0a7d9c71f09fee627fbde59ae7f3cbd4abcdf0533c8a87fba8c7cf4503df34bf33777063f4b6353a022552fd003fdbea9fad5752d53609bb8";
      version = "1.0.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "plexus-component-annotations/org.codehaus.plexus";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-component-annotations";
      groupId = "org.codehaus.plexus";
      sha512 = "cc534fda54272f074fe9edd581a6c3e1ea98127340c7f852c4b4953a44dad048ace22dfa10f30d6adcdfc15efd319dac778a03ebbe20de7779fd1df640506e88";
      version = "2.1.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "endpoints/com.cognitect.aws";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "endpoints";
      groupId = "com.cognitect.aws";
      sha512 = "e0025e1a816c501ccd62de6a5c173a753a16d94515b27299224418175807c0a30bfa30c2bc2f9c7539471782f7f1894178a74f27cdd0aa3ac82102aabebb1b99";
      version = "1.1.11.969";
      
    };
    paths = [ src ];
  }

  rec {
    name = "error_prone_annotations/com.google.errorprone";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "error_prone_annotations";
      groupId = "com.google.errorprone";
      sha512 = "8f5f13fac4c40d680a1f062c609aa598e7585684af37d695357738935fc0683ddcb94c880dddd03e78b1db071c2e5cebd054a061f8f24322c5ffa43aca34a859";
      version = "2.2.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "commons-lang3/org.apache.commons";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "commons-lang3";
      groupId = "org.apache.commons";
      sha512 = "fb0fe98385496a565678a000c26a3245082abfbf879cc29a35112b4bf18c966697a7a63bb1fd2fae4a42512cd3de5a2e6dc9d1df4a4058332a6ddeae06cdf667";
      version = "3.8.1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "tools.logging/org.clojure";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.logging";
      groupId = "org.clojure";
      sha512 = "d846b3032f5350af7e8847e94dea223ef8a644d353e45d6ec44c2ffa1f0df96b90cfe7afc0610cd0a13b52527ff2fe71003fbd5cbc2dd60320a1be5979b62e80";
      version = "1.1.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "core.specs.alpha/org.clojure";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "core.specs.alpha";
      groupId = "org.clojure";
      sha512 = "c1d2a740963896d97cd6b9a8c3dcdcc84459ea66b44170c05b8923e5fbb731b4b292b217ed3447bbc9e744c9a496552f77a6c38aea232e5e69f8faa627dea4b5";
      version = "0.2.56";
      
    };
    paths = [ src ];
  }

  rec {
    name = "spec.alpha/org.clojure";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "spec.alpha";
      groupId = "org.clojure";
      sha512 = "0740dc3a755530f52e32d27139a9ebfd7cbdb8d4351c820de8d510fe2d52a98acd6e4dfc004566ede3d426e52ec98accdca1156965218f269e60dd1cd4242a73";
      version = "0.2.194";
      
    };
    paths = [ src ];
  }

  rec {
    name = "tools.cli/org.clojure";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.cli";
      groupId = "org.clojure";
      sha512 = "1d88aa03eb6a664bf2c0ce22c45e7296d54d716e29b11904115be80ea1661623cf3e81fc222d164047058239010eb678af92ffedc7c3006475cceb59f3b21265";
      version = "1.0.206";
      
    };
    paths = [ src ];
  }

  rec {
    name = "guice/com.google.inject";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "guice";
      groupId = "com.google.inject";
      sha512 = "1e811c276d3d953d7e2e6cc2bd33af16645f87e864713db0d70fc2dc7110483c8f40525f2f0f403344e5653bb8375ccdec9fda0c0ba6c42114ac482cba50960d";
      version = "4.2.3";
      
    };
    paths = [ src ];
  }

  rec {
    name = "animal-sniffer-annotations/org.codehaus.mojo";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "animal-sniffer-annotations";
      groupId = "org.codehaus.mojo";
      sha512 = "94d0335cdf94aa547ad6c0c7e44b8e3bda736ce19d941dd0faa3a45390e5ab2d122022ff4e07bb9aaedd41ffbd9500f324e0a9e42f4c5441bce0774f44872f45";
      version = "1.17";
      
    };
    paths = [ src ];
  }

  rec {
    name = "jetty-http/org.eclipse.jetty";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jetty-http";
      groupId = "org.eclipse.jetty";
      sha512 = "975464a98090c60c8bc4cc14ec4aa062e79693746048dc65e1170b876b66e5de9f33e5f2d4bbf0439a42fc5c3b14a3f10093fbd536fc1fd067a54ae93b12596d";
      version = "9.4.36.v20210114";
      
    };
    paths = [ src ];
  }

  rec {
    name = "jetty-util/org.eclipse.jetty";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jetty-util";
      groupId = "org.eclipse.jetty";
      sha512 = "7c23421b00e30eef8c53f33e6645e8f6b579c5247ccd8540cc8c62c6ab1d8c39cb1d80fc21a6cb931dd555fe1c6589b7a6cdb719c6dc38cda1456ea317ea5e14";
      version = "9.4.36.v20210114";
      
    };
    paths = [ src ];
  }

  rec {
    name = "jcl-over-slf4j/org.slf4j";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jcl-over-slf4j";
      groupId = "org.slf4j";
      sha512 = "aed539305114718bd76da54f29a391362eb331108d9c033956bf68df29c62a44874c73ae39d19a25342625b6092326d39b4d8720aed6c62234a234e0855b00b5";
      version = "1.7.30";
      
    };
    paths = [ src ];
  }

  rec {
    name = "tools.analyzer.jvm/org.clojure";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.analyzer.jvm";
      groupId = "org.clojure";
      sha512 = "ce9c7b51fa61c12c539f3c5c1c7fa1caf123497553d4e566c13895312faad2d2657fe6e54fe88110a6c87accb10c4c3b6ccfa87a035a7321da6c859da1d192d0";
      version = "1.1.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-resolver-transport-http/org.apache.maven.resolver";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-transport-http";
      groupId = "org.apache.maven.resolver";
      sha512 = "5a4a3693920fc941c9b67e9d55acd356f8b993fbed0f42ca59bf715310d85f5fa161de3f14708f58091871e2f40343812b017579e5f7b6629bb800be7817136e";
      version = "1.6.1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-model-builder/org.apache.maven";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-model-builder";
      groupId = "org.apache.maven";
      sha512 = "d65f71a4c755be518061fc2d33582c3da422cb3d52a01cd68bdf906c0fc4bfc1977da7714f9622452a02d34e00b7d4b1b1e4986bb59cbfdc5333bf12c9c7e699";
      version = "3.6.3";
      
    };
    paths = [ src ];
  }

  rec {
    name = "plexus-utils/org.codehaus.plexus";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-utils";
      groupId = "org.codehaus.plexus";
      sha512 = "354f185cb3c6ade3f2d3f27c1a27a811922782ca4bd74a997c9c922dc7a2d44148ce6f141f16c0c1ab8f7988dd8a30602713d558606d088e8ba82a0ec1fb55a5";
      version = "3.2.1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-resolver-transport-file/org.apache.maven.resolver";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-transport-file";
      groupId = "org.apache.maven.resolver";
      sha512 = "67f05420798d436ea82c0095e410e1b52916a260bc0779e99dfab97f3676b0904e20de0c3e12c67d70b6f32499766826b7164ae47ad6435955c9e0c5602b6d6b";
      version = "1.6.1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "org.eclipse.sisu.plexus/org.eclipse.sisu";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "org.eclipse.sisu.plexus";
      groupId = "org.eclipse.sisu";
      sha512 = "f76b33d4c0acfb90357736b8466016661924351332e1db6eaff5bd15398e7765acec328dd3e94d37b66c9881a54bbed23571590363c46ee78f5d1acbad36c95b";
      version = "0.3.4";
      
    };
    paths = [ src ];
  }

  rec {
    name = "commons-io/commons-io";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "commons-io";
      groupId = "commons-io";
      sha512 = "1f6bfc215da9ae661dbabba80a0f29101a2d5e49c7d0c6ed760d1cafea005b7f0ff177b3b741e75b8e59804b0280fa453a76940b97e52b800ec03042f1692b07";
      version = "2.5";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-settings-builder/org.apache.maven";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-settings-builder";
      groupId = "org.apache.maven";
      sha512 = "f9f9f538a409d7cf2bd2517854f2d6aa45e0476865f217a11832f042ec361c67998241065540c3269d3db3915c903b15b6e4fb57af9623b192f9d8089110ecbc";
      version = "3.6.3";
      
    };
    paths = [ src ];
  }

  rec {
    name = "listenablefuture/com.google.guava";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "listenablefuture";
      groupId = "com.google.guava";
      sha512 = "c5987a979174cbacae2e78b319f080420cc71bcdbcf7893745731eeb93c23ed13bff8d4599441f373f3a246023d33df03e882de3015ee932a74a774afdd0782f";
      version = "9999.0-empty-to-avoid-conflict-with-guava";
      
    };
    paths = [ src ];
  }

  rec {
    name = "asm/org.ow2.asm";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "asm";
      groupId = "org.ow2.asm";
      sha512 = "40614e658138f2eb95bc26999545f996794c622c4d68efb9e10093743504c4b58bf22590767bc6bd93b77cdfb202c507144ba867bbc8b54d74fe7621cbc55e3a";
      version = "5.2";
      
    };
    paths = [ src ];
  }

  rec {
    name = "cdi-api/javax.enterprise";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "cdi-api";
      groupId = "javax.enterprise";
      sha512 = "3e326196a2cbf19375803ce37d743a9818c4fa2292914439e748060d6889c997fe33077f52e52d4dd61b60e7342aa31b446d7571a92ec864f44cead45ebd612b";
      version = "1.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-settings/org.apache.maven";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-settings";
      groupId = "org.apache.maven";
      sha512 = "dae78e5bedde2009c8a7fdf0b77c91b87b8c4c4cb5bc73f799107edd75597a3c90dc497abdfa43254e7dc31eb7707384254d91fb656c74bb5d86cd868e36209b";
      version = "3.6.3";
      
    };
    paths = [ src ];
  }

  rec {
    name = "httpcore/org.apache.httpcomponents";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "httpcore";
      groupId = "org.apache.httpcomponents";
      sha512 = "23430cde8b9bed33c91474ba49f1143284135df1b25fdcbc37bc3bb7e9549e77b3918eb40250093db652ae200367e87316129b23b4f6987e94939d60f467498d";
      version = "4.4.13";
      
    };
    paths = [ src ];
  }

  rec {
    name = "slf4j-simple/org.slf4j";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "slf4j-simple";
      groupId = "org.slf4j";
      sha512 = "09df932b8180e4bf6e9ca26fac0acbfd0f748ba284a5715ce286494fa8f979917ee51ebe208a17277b618bf54857d0c87dba4811710c1683225e50cbeb51878b";
      version = "1.7.30";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-core/org.apache.maven";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-core";
      groupId = "org.apache.maven";
      sha512 = "fe0e2bd7c34267f7c8139d996bee99f41d29bcb6d1bbedbceb055eda31355ef179ed5e319fa97496eb85499bfc5f8738f7ac7f2c17a7118cb87cfacd984708de";
      version = "3.6.3";
      
    };
    paths = [ src ];
  }

  rec {
    name = "plexus-cipher/org.sonatype.plexus";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-cipher";
      groupId = "org.sonatype.plexus";
      sha512 = "deb948be3a9f6a2fa74adca17e54b1074948267b3a35dd4000d92c559d0387650770ccee096ad8f01dd51c36caf63878dc0bcf57dfb1f2e3e1a9d51204096617";
      version = "1.4";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-resolver-api/org.apache.maven.resolver";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-api";
      groupId = "org.apache.maven.resolver";
      sha512 = "a533793f6a408d6f762158b0f17bb7c67919520d17f5a191e4b068c16a965724c5d6ddef3074d9c6812ca8594d02524d4a67be05b084861c05882463de32f14b";
      version = "1.6.1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "jsr250-api/javax.annotation";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jsr250-api";
      groupId = "javax.annotation";
      sha512 = "8b5dd24460e42763f3645205be4b4f80691e217d36bee5fc5b5df6ebc8782ed0f641fb9e2fe918a2d0eede32556656f6b61fe65d2cbec5086e61ef3d91e4d871";
      version = "1.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "http-client/com.cognitect";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "http-client";
      groupId = "com.cognitect";
      sha512 = "ad0e41c2b27857360b82531b54bc82f78e9a4b9221bbe9aa2969e7dc3384b005b0be991118c00fa42b12d342724095d805eff7d785b691a2f7dead95ec6f6bc3";
      version = "0.1.106";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-resolver-provider/org.apache.maven";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-provider";
      groupId = "org.apache.maven";
      sha512 = "9febca461a031acd195b96b05fea2f28333a2cb587119a5493a3e9061af87bed4e7e1619acce9a505ad579a71f0a5e740cf78a3642095c2bc45a3d73c358e226";
      version = "3.6.3";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-shared-utils/org.apache.maven.shared";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-shared-utils";
      groupId = "org.apache.maven.shared";
      sha512 = "4cab9de8654b3744ceb1a62b51853e076c191cae8193e8393a979cd428833b994ceed591806960e100942dde3eeb65538169d42666004e3623b6129475fe2cab";
      version = "3.2.1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "tools.deps.alpha/org.clojure";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.deps.alpha";
      groupId = "org.clojure";
      sha512 = "1698591945a6f08e3135bc682b5f5d7847baa83dd1d219bb0057915b77fe31661518419e00b158ed278e41b0f78aac1188250aec0d7048eb115333c813505ff8";
      version = "0.11.910";
      
    };
    paths = [ src ];
  }

  rec {
    name = "failureaccess/com.google.guava";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "failureaccess";
      groupId = "com.google.guava";
      sha512 = "f8d59b808d6ba617252305b66d5590937da9b2b843d492d06b8d0b1b1f397e39f360d5817707797b979a5bf20bf21987b35333e7a15c44ed7401fea2d2119cae";
      version = "1.0.1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "guava/com.google.guava";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "guava";
      groupId = "com.google.guava";
      sha512 = "5c32a58148c3b91577cd6d335d61a1994041a2a5c77a240303ba6e786c895336400f6fd449eab0802594bf47c17985c5587ab87c3c4b628bfc1d7090ddc0b006";
      version = "27.1-jre";
      
    };
    paths = [ src ];
  }

  rec {
    name = "data.xml/org.clojure";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "data.xml";
      groupId = "org.clojure";
      sha512 = "12ea6e7ee27be4a0329a766f3449f3e3b756772e3cd8588b4666bb175faaabd0780b96300b10e17ccb3016b0ba5d9f020c7d976211ff398e7bebef718aa4d5f5";
      version = "0.2.0-alpha6";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-resolver-spi/org.apache.maven.resolver";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-spi";
      groupId = "org.apache.maven.resolver";
      sha512 = "7c26049364257c72e64a7510a82af714f417fa691b86b61bcd7c3c033572e847ac2e38adad535d5ae7ffe8821e8a2f8e72ca4b5ae8e7a13b076a81c85c8a390e";
      version = "1.6.1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "j2objc-annotations/com.google.j2objc";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "j2objc-annotations";
      groupId = "com.google.j2objc";
      sha512 = "a4a0b58ffc2d9f9b516f571bcd0ac14e4d3eec15aacd6320a4a1a12045acce8c6081e8ce922c4e882221cedb2cc266399ab468487ae9a08124d65edc07ae30f0";
      version = "1.1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "plexus-classworlds/org.codehaus.plexus";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-classworlds";
      groupId = "org.codehaus.plexus";
      sha512 = "6a58048d9db54e603b9cfd35373cf695b66dd860bec878c663b4fc53b6b3d44dd5b0c92e7603654911b1f78e63ef277cf6b272fe069a360989138550545f274d";
      version = "2.6.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "plexus-sec-dispatcher/org.sonatype.plexus";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-sec-dispatcher";
      groupId = "org.sonatype.plexus";
      sha512 = "5b947edcb05a1c17648ec9fe53dd2c66b4a86dd2b950d989255f6edd636fd5d50d18b8f31b3a1736dadd9cff6790a3d0355f2ed896c3eb7f72e009199fe9957d";
      version = "1.4";
      
    };
    paths = [ src ];
  }

  rec {
    name = "plexus-interpolation/org.codehaus.plexus";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-interpolation";
      groupId = "org.codehaus.plexus";
      sha512 = "fb647c1f159d17e16ae925bb407585e4a4b30c468518e60d3069ea4a75fa0f7122e789923534632125b22b7cef1cb44caf00700bba90282360f7c76e086b6699";
      version = "1.25";
      
    };
    paths = [ src ];
  }

  rec {
    name = "httpclient/org.apache.httpcomponents";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "httpclient";
      groupId = "org.apache.httpcomponents";
      sha512 = "18ce8b0cd1de30fa397d25b4bcf6760f82706ed00270ed0a1db17f25fab6a7795950a2df171f212c680fc145c2f1125992e184b8f303c97a6498471079fa97fe";
      version = "4.5.12";
      
    };
    paths = [ src ];
  }

  rec {
    name = "checker-qual/org.checkerframework";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "checker-qual";
      groupId = "org.checkerframework";
      sha512 = "fb32e3893f9ebc956ef99066b219a8fc8049b47b80a7253cd89b7faadf0a2fa14d60b52dd5c2f4aaeb1db0359f49fec9e29d3616bd314ec8c82db1c657be8cd2";
      version = "2.5.2";
      
    };
    paths = [ src ];
  }

  rec {
    name = "jetty-client/org.eclipse.jetty";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jetty-client";
      groupId = "org.eclipse.jetty";
      sha512 = "683e4573475e3a40376823af7da93c81a0d5e5f645cadd41d805b7a71a9f597f2a6ae1607d1b8c4f283d3ced89f1a79c0f6b817a4ed70c7f6ea83335f7291db0";
      version = "9.4.36.v20210114";
      
    };
    paths = [ src ];
  }

  rec {
    name = "jetty-io/org.eclipse.jetty";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jetty-io";
      groupId = "org.eclipse.jetty";
      sha512 = "24731d0ef0012cd24055800c82f73e51864c41cbd5e3e423db3d39ed78c2a8c7002280f3f3ea835def6b8ddb0d00fcddd8abbda68820f219c0967c672abe5c57";
      version = "9.4.36.v20210114";
      
    };
    paths = [ src ];
  }

  rec {
    name = "tools.reader/org.clojure";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.reader";
      groupId = "org.clojure";
      sha512 = "290a2d98b2eec08a8affc2952006f43c0459c7e5467dc454f5fb5670ea7934fa974e6be19f7e7c91dadcfed62082d0fbcc7788455b7446a2c9c5af02f7fc52b6";
      version = "1.3.2";
      
    };
    paths = [ src ];
  }

  rec {
    name = "tools.gitlibs/org.clojure";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.gitlibs";
      groupId = "org.clojure";
      sha512 = "363cde5add378986d396d59207a3b0722d813ac0deed6c1a602a7a8519a35255ba35f4e6c12992e4a704c4cfcd7d419275a74e02dc1880b9b6e8f7d1021b9769";
      version = "2.2.152";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-resolver-connector-basic/org.apache.maven.resolver";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-connector-basic";
      groupId = "org.apache.maven.resolver";
      sha512 = "48a7089eec1509f94af098d48213c762fed86bd1ed9177c7901ce84aa9ac38ea940d5296c43035de5f64ff23011f3d373b910b8ec2bec10672bddbd96bd7a2a6";
      version = "1.6.1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "s3/com.cognitect.aws";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "s3";
      groupId = "com.cognitect.aws";
      sha512 = "c3f7026bab1e95137af39c073b371b250e5a30ea47c96bf0d5cef982921b1b9888bfeb5ca6e5e342cbb30df964f9373a0c1c06d0f2d6be432f433ee3ee7b1cf5";
      version = "811.2.858.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-resolver-impl/org.apache.maven.resolver";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-impl";
      groupId = "org.apache.maven.resolver";
      sha512 = "430065088b785ddd6893cc106470de5dac6e9035b372f8d499da5dddbcacbd58cdce8c4ce3c504444b1c8e84e87f06767689eb8612b19218c8ec96f87eca5281";
      version = "1.6.1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "slf4j-api/org.slf4j";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "slf4j-api";
      groupId = "org.slf4j";
      sha512 = "e5435852569dda596ba46138af8ee9c4ecba8a7a43f4f1e7897aeb4430523a0f037088a7b63877df5734578f19d331f03d7b0f32d5ae6c425df211947b3e6173";
      version = "1.7.30";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-model/org.apache.maven";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-model";
      groupId = "org.apache.maven";
      sha512 = "7df3d781dd0c3a5947c76a02bb811d2bff0eb9bd0ba1efc3a55001576c58612bb1fd221ceb9cedd7ed84dfdb64c973b61af22c56636e1cfb03a55cfbe83655f6";
      version = "3.6.3";
      
    };
    paths = [ src ];
  }

  rec {
    name = "org.eclipse.sisu.inject/org.eclipse.sisu";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "org.eclipse.sisu.inject";
      groupId = "org.eclipse.sisu";
      sha512 = "cfd6be3e9f160258682662325757a8b95303045e37708f4226f40aaef01c8a5e4ff5a275715e4d740e2feae462e3b76f53c360507c1f738bec0157d2c226a46a";
      version = "0.3.4";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-resolver-util/org.apache.maven.resolver";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-util";
      groupId = "org.apache.maven.resolver";
      sha512 = "78d9f8620d9d65640bb71451152b5b4274da583d24ee814728c5709029e271f99ac28d6bae3abb5e77ad217f665ea94dfc18a0ef1c72b656a9c8081db3a6de5f";
      version = "1.6.1";
      
    };
    paths = [ src ];
  }

  rec {
    name = "core.memoize/org.clojure";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "core.memoize";
      groupId = "org.clojure";
      sha512 = "37308fcbbe64d0a2802917ef5a589075f81086d63e08c71a9a1b648b73dd362e5bdc8f756084fde1f4b1964ba82a6dc06b2119460281b7949a271d82e6a47a7e";
      version = "1.0.236";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-repository-metadata/org.apache.maven";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-repository-metadata";
      groupId = "org.apache.maven";
      sha512 = "9fbaffa07e4bfc091d4d8818330481bdc9d1d96448087321bb2914aac10ccb1c7b5cc6be0f6c76b8c0232b9cb69e4cdeec4fe40df5e9f2d472a4a027e5a3b3f9";
      version = "3.6.3";
      
    };
    paths = [ src ];
  }

  rec {
    name = "data.priority-map/org.clojure";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "data.priority-map";
      groupId = "org.clojure";
      sha512 = "fb2d703468fb6d5f28c38f25e8e7acdaf02d2fa1ac23c14a9ff065873e88c9b74e155e73e5069436d674d7ef8547f01bc9777b7ae3b9dcde67cbd327d4a20c06";
      version = "1.0.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "aopalliance/aopalliance";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "aopalliance";
      groupId = "aopalliance";
      sha512 = "3f44a932d8c00cfeee2eb057bcd7c301a2d029063e0a916e1e20b3aec4877d19d67a2fd8aaf58fa2d5a00133d1602128a7f50912ffb6cabc7b0fdc7fbda3f8a1";
      version = "1.0";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-builder-support/org.apache.maven";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-builder-support";
      groupId = "org.apache.maven";
      sha512 = "1f72981bf568facf16865dbfb1d5955ecbf82d90b5ed3da2bc096fb7e0f67056202d16078d9ad46945de9b59846aadc8ac010d23ab374dffbef5e7534bdbf1fd";
      version = "3.6.3";
      
    };
    paths = [ src ];
  }

  rec {
    name = "jsr305/com.google.code.findbugs";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jsr305";
      groupId = "com.google.code.findbugs";
      sha512 = "bb09db62919a50fa5b55906013be6ca4fc7acb2e87455fac5eaf9ede2e41ce8bbafc0e5a385a561264ea4cd71bbbd3ef5a45e02d63277a201d06a0ae1636f804";
      version = "3.0.2";
      
    };
    paths = [ src ];
  }

  rec {
    name = "core.cache/org.clojure";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "core.cache";
      groupId = "org.clojure";
      sha512 = "6e4e126f23b20120c50a4dbefbe1b3b9bd98f0a7b8fa83affa267ff7f0de09542d2727243859a1ea346bda5b782d4ae0110f6c2b169c298261707a1fdadaedb0";
      version = "1.0.207";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-plugin-api/org.apache.maven";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-plugin-api";
      groupId = "org.apache.maven";
      sha512 = "07090ed707bb3364219da130bc7b38a2a2b9fd31bae51144202b52e5e9f8d9690e8b3fe360bb3327fbeaed3b555c42b52144fb87a5854c8ca2226c07d62e0ed6";
      version = "3.6.3";
      
    };
    paths = [ src ];
  }

  rec {
    name = "core.async/org.clojure";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "core.async";
      groupId = "org.clojure";
      sha512 = "3a656c6f775940013a6b2e993bb60085246933c559d3c686fc7c2f5f82c70b672921d4bee964de2c31f6bf876cf3bc266ee39e918b6c310f5fd6254f65cb2064";
      version = "1.3.610";
      
    };
    paths = [ src ];
  }

  rec {
    name = "maven-artifact/org.apache.maven";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-artifact";
      groupId = "org.apache.maven";
      sha512 = "53726aee76ea01de2253c623292f64b5bf7784c6e223ebcc7548a2136922cbdf69d3bc42c44d00e6fe2015d2304b67d02d7a988d400da2ed036d489c6ed8fbe6";
      version = "3.6.3";
      
    };
    paths = [ src ];
  }

  rec {
    name = "data.codec/org.clojure";
    src = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "data.codec";
      groupId = "org.clojure";
      sha512 = "c324b62a5f14b2f17e49f1b0fffa3f44d195cb5261e03c5e472ba4f2972135f4b06fd321c0887717c727f025fc1a0121283d16fbf923d7469856702614a288f3";
      version = "0.1.0";
      
    };
    paths = [ src ];
  }

  ];
  }
  
