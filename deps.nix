# generated by clj2nix-1.0.4
{ pkgs ? import <nixpkgs> {} }:
  
  let repos = [
        "https://repo.clojars.org/"
        "https://repo1.maven.org/"
        "http://central.maven.org/maven2/"
        "http://oss.sonatype.org/content/repositories/releases/"
        "http://oss.sonatype.org/content/repositories/public/"
        "http://repo.typesafe.com/typesafe/releases/"
      ];

  in rec {
      makePaths = {extraClasspaths ? []}: (builtins.map (dep: if builtins.hasAttr "jar" dep.path then dep.path.jar else dep.path) packages) ++ extraClasspaths;
      makeClasspaths = {extraClasspaths ? []}: builtins.concatStringsSep ":" (makePaths {inherit extraClasspaths;});

      packages = [
  {
    name = "javax.inject/javax.inject";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "javax.inject";
      groupId = "javax.inject";
      sha512 = "e126b7ccf3e42fd1984a0beef1004a7269a337c202e59e04e8e2af714280d2f2d8d2ba5e6f59481b8dcd34aaf35c966a688d0b48ec7e96f102c274dc0d3b381e";
      version = "1";
    };
  }

  {
    name = "org.clojure/data.json";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "data.json";
      groupId = "org.clojure";
      sha512 = "ce526bef01bedd31b772954d921a61832ae60af06121f29080853f7932326438b33d183240a9cffbe57e00dc3744700220753948da26b8973ee21c30e84227a6";
      version = "0.2.6";
    };
  }

  {
    name = "org.clojure/clojure";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "clojure";
      groupId = "org.clojure";
      sha512 = "7fdcc6fe280c44966cbe38b2758cacb3eadfade07eca9ce0a50bbf71129a6ce0e7b1959067f6b7f47500b30bdf7a68891e18600d5b1c2afc7288f0bbb330ec2f";
      version = "1.9.0";
    };
  }

  {
    name = "joda-time/joda-time";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "joda-time";
      groupId = "joda-time";
      sha512 = "8c2725ddbb779442ad9a8417b594fd0d8ee4b3bba568d4f5f58de345c5de16aacf0777ce7bf01e943cc054cb2fc97d2702e181e0ce22453cc4386cef325d4902";
      version = "2.8.1";
    };
  }

  {
    name = "commons-codec/commons-codec";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "commons-codec";
      groupId = "commons-codec";
      sha512 = "8edecc0faf38e8620460909d8191837f34e2bb2ce853677c486c5e79bb79e88d043c3aed69c11f1365c4884827052ee4e1c18ca56e38d1a5bc0ce15c57daeee3";
      version = "1.10";
    };
  }

  {
    name = "org.codehaus.plexus/plexus-component-annotations";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-component-annotations";
      groupId = "org.codehaus.plexus";
      sha512 = "e20aa9fdb3fda4126f55ef45c36362138c6554ede40fa266ff6b63fe1c3b4d699f9eb95793f26527e096ec7567874aa7af5fe84124815729fdb2d4abaa9ddea8";
      version = "1.7.1";
    };
  }

  {
    name = "org.apache.commons/commons-lang3";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "commons-lang3";
      groupId = "org.apache.commons";
      sha512 = "9e6ff20e891b6835d5926c90f237d55931e75723c8b88d6417926393e077e71013dab006372d34a6b5801e6ca3ce080a00f202cba700cab5aabfc17bbbdcab36";
      version = "3.5";
    };
  }

  {
    name = "org.springframework.build/aws-maven";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "aws-maven";
      groupId = "org.springframework.build";
      sha512 = "2f7699aec317c4d2d8d6487c8c229c2033dbeed69b2d931afcba9911a4922b9a06283ef4177ed1767dbfb617e2de7d86fbfd6b82358419ad107afec5fbe5454a";
      version = "5.0.0.RELEASE";
    };
  }

  {
    name = "org.clojure/core.specs.alpha";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "core.specs.alpha";
      groupId = "org.clojure";
      sha512 = "b4f5eee01da39914e6024dd529d1f72952d5a9dae65e1e41bf386b1e86a004a0d197b5be95aa70e7e8d6438c92b7fa8fc0c5039f2013e97c0b91c22d86fb7968";
      version = "0.1.24";
    };
  }

  {
    name = "com.fasterxml.jackson.core/jackson-databind";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jackson-databind";
      groupId = "com.fasterxml.jackson.core";
      sha512 = "0d637e544d078e14caa508474a50583d5da967824f10953886cb05a2c4a05af5c2fa277bbc21823f31401a3f774d013e09fb3668ada8bbc49470143ebb2a0a9f";
      version = "2.5.5";
    };
  }

  {
    name = "org.clojure/spec.alpha";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "spec.alpha";
      groupId = "org.clojure";
      sha512 = "b8fc40ed9bc52b545e699ed188dd61bfd144ee67f0c70364b8f2715e9f1fea608d3721db7f618f6ef4bc3056e3c2984c626080486ca710f3595dda8ba23730ac";
      version = "0.1.143";
    };
  }

  {
    name = "org.clojure/tools.cli";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.cli";
      groupId = "org.clojure";
      sha512 = "9baf3fafe2e92b846404ef1bd897a4a335fe4bc1f78a2408ee93c09dc960a630f58a0e863b2d299624783f2851bb5d83f93fa627276d28d66c92764c46f27efe";
      version = "0.4.2";
    };
  }

  {
    name = "com.google.inject/guice";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "guice";
      groupId = "com.google.inject";
      sha512 = "3c836c574c9a34f51487dae31b8fb2e8eb21df781aa3d004a20fa12df4e5b1c1c5e3ce76981292f859bb22f6d82aaa9860b7a280b875968b2f4636fd5840e490";
      version = "4.0";
    };
  }

  {
    name = "org.apache.maven.resolver/maven-resolver-transport-wagon";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-transport-wagon";
      groupId = "org.apache.maven.resolver";
      sha512 = "f445e5c7de0ed02566d2ecf2b540599e4b58256cff84df1824911709dfa95a91c826655c74f2be7b9c70d7225a98e7042ed489bfd497cf5a262269f7e3e922e1";
      version = "1.1.1";
    };
  }

  {
    name = "org.slf4j/jcl-over-slf4j";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jcl-over-slf4j";
      groupId = "org.slf4j";
      sha512 = "0a703864b269de6f7bc98df0fa98aa943cc327a4ca2915899d460e4a071fcc3fbe70957eb91b740cc935d0960b3d98f30c54a0a4019d7ae8c6d50f51edb8d149";
      version = "1.7.25";
    };
  }

  {
    name = "com.jcraft/jsch.agentproxy.jsch";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jsch.agentproxy.jsch";
      groupId = "com.jcraft";
      sha512 = "07e028fc7e47da2012116933d796ac75908e84eb5a42d8147aa11aa66c0c91ddd509628b19ad6603c7ce118a05e8985329fa0dc0dad7661d09ec5b3c76333ee0";
      version = "0.0.9";
    };
  }

  {
    name = "org.apache.maven.wagon/wagon-provider-api";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "wagon-provider-api";
      groupId = "org.apache.maven.wagon";
      sha512 = "4571002ad5bfc0442bb2eaf32ec42675dc0a179413230615475842bba12fb561159ffc0213127cf241088641a218627e84049b715b9e71ed83d960f4f09da985";
      version = "3.0.0";
    };
  }

  {
    name = "com.jcraft/jsch.agentproxy.sshagent";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jsch.agentproxy.sshagent";
      groupId = "com.jcraft";
      sha512 = "0898f33a1eae03ab3b0d78ad26076756ec0eec456e185b7d5057e003b33e0cb1b2ca57b8c4cdca48eae544daf36adcabd170138e5950b85ab8b64c97c094ba9d";
      version = "0.0.9";
    };
  }

  {
    name = "com.fasterxml.jackson.dataformat/jackson-dataformat-cbor";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jackson-dataformat-cbor";
      groupId = "com.fasterxml.jackson.dataformat";
      sha512 = "d71d8a4e290231fdf99a0e5783809e6184406d8330c3bcdf6cd4f5061249bd9f0b28c06eeb76164c3cca7d9e2f6e8801fcaefe4010a585b00f93c6b51b38cd0d";
      version = "2.6.7";
    };
  }

  {
    name = "org.apache.maven.resolver/maven-resolver-transport-http";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-transport-http";
      groupId = "org.apache.maven.resolver";
      sha512 = "0dcfc242d10c9114ac176b68a1be49addf3fc50306cff5ac469ab5d72e595d0706d70055a3a6295e5a2bbe9c6f3d2d4e5db42af0059ac5de2fcbd540b1eff8da";
      version = "1.1.1";
    };
  }

  {
    name = "org.apache.maven/maven-model-builder";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-model-builder";
      groupId = "org.apache.maven";
      sha512 = "1597b38914e4b6c46cead8c7859eb409503ce5852b33e0ad604767782623a26e8e8bf346ff9f26a6ac843529b5184265922d1682fedb0b6d3e737a45b9fa4b90";
      version = "3.5.2";
    };
  }

  {
    name = "com.googlecode.javaewah/JavaEWAH";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "JavaEWAH";
      groupId = "com.googlecode.javaewah";
      sha512 = "fea689d1e29761ce90c860ee3650c4167ae9e5ecaa316247bdafac5833bce48d2b3e04e633b426e3ab7ef3a5c9c7fd150ffa0c21afdcae9c945cb2bb85f8a82f";
      version = "1.1.6";
    };
  }

  {
    name = "org.codehaus.plexus/plexus-utils";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-utils";
      groupId = "org.codehaus.plexus";
      sha512 = "3805c57b7297459c5e2754d0fd56abd454eee08691974fb930ebb9b79a529fd874f16d40cec66e7fd90d4146c9d1fef45cdb59f9e359fce0c48ac77526fc320d";
      version = "3.1.0";
    };
  }

  {
    name = "org.apache.maven.resolver/maven-resolver-transport-file";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-transport-file";
      groupId = "org.apache.maven.resolver";
      sha512 = "abb8e769c1a541c8d73876d41725b9438e91f6e17d06c52ee1822d5bead7575679ec7a3a76e1f93e09d0acfd902af1bf47d279ed9af94aef60c7e736ab82de76";
      version = "1.1.1";
    };
  }

  {
    name = "org.eclipse.sisu/org.eclipse.sisu.plexus";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "org.eclipse.sisu.plexus";
      groupId = "org.eclipse.sisu";
      sha512 = "893a98877e760be8a8020e929aec36c5bfcbcbc08c83527e65e152f782da748cc6df3fa8fe74936e5fe30886bf9aa3096204c99cdc5f6229e9e2626be313b1c7";
      version = "0.3.3";
    };
  }

  {
    name = "com.jcraft/jsch.agentproxy.usocket-jna";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jsch.agentproxy.usocket-jna";
      groupId = "com.jcraft";
      sha512 = "3213e63895552aa33858ece929c84c140ea95d6c3835c88e150cd37f266fb69b48b9ff9921132c808d1909ad0e97dd497a28a34d051a0a8c06c18b5a0d5f2850";
      version = "0.0.9";
    };
  }

  {
    name = "commons-io/commons-io";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "commons-io";
      groupId = "commons-io";
      sha512 = "1f6bfc215da9ae661dbabba80a0f29101a2d5e49c7d0c6ed760d1cafea005b7f0ff177b3b741e75b8e59804b0280fa453a76940b97e52b800ec03042f1692b07";
      version = "2.5";
    };
  }

  {
    name = "org.apache.maven/maven-settings-builder";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-settings-builder";
      groupId = "org.apache.maven";
      sha512 = "3ced76df9e083bd9e929c6acceed3be4481d94dee0ccb9a506c90277d3973e987b4d73e91c6c664480d886d8b58f9098c66fcbe9d86ec8bf175df1064e2848a6";
      version = "3.5.2";
    };
  }

  {
    name = "org.eclipse.jgit/org.eclipse.jgit";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "org.eclipse.jgit";
      groupId = "org.eclipse.jgit";
      sha512 = "19ca3301391a4d4a6ca9c8ad2c936040497ee79b7c1e59c768636cf5d89f27329f808f8daaa74771bdedb877d694d9ae44dc8f94a932f4054d0c471efccf69d9";
      version = "4.10.0.201712302008-r";
    };
  }

  {
    name = "com.fasterxml.jackson.core/jackson-core";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jackson-core";
      groupId = "com.fasterxml.jackson.core";
      sha512 = "72ba47f07156c58e1cc28089b80693b92ac4087b66f1bbb3445196af0c78d9e9a266e5573136e1a5ae41cceb54a2a0f098d7c546f7d8e74bcd06a771c003404c";
      version = "2.5.5";
    };
  }

  {
    name = "javax.enterprise/cdi-api";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "cdi-api";
      groupId = "javax.enterprise";
      sha512 = "3e326196a2cbf19375803ce37d743a9818c4fa2292914439e748060d6889c997fe33077f52e52d4dd61b60e7342aa31b446d7571a92ec864f44cead45ebd612b";
      version = "1.0";
    };
  }

  {
    name = "org.apache.maven/maven-settings";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-settings";
      groupId = "org.apache.maven";
      sha512 = "39d7dec72f792a08fd188d5ab7ba9e19853bf19dc9a38dd1ccd1ee0d28cdc122152d2722ff2078e8de0200d5f10408fd60147a270d66fa956989ae2fdf113855";
      version = "3.5.2";
    };
  }

  {
    name = "org.apache.httpcomponents/httpcore";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "httpcore";
      groupId = "org.apache.httpcomponents";
      sha512 = "37e1c2a24c2512120061477e104950a923961c9cb1cc7d96a82ddba7f64a7cc2afe38334bc82389f24aa1d4eca69440317be07a3be400980d205f150f742d324";
      version = "4.4.8";
    };
  }

  {
    name = "org.apache.maven/maven-core";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-core";
      groupId = "org.apache.maven";
      sha512 = "adedc901581ccc24355f793ac0515daef79bd90450607672ac47df48d312bd9501036e164d71abba19af98dad5c662e007a2ff990c0f5f63cb525d3e8d1bd67d";
      version = "3.5.2";
    };
  }

  {
    name = "org.sonatype.plexus/plexus-cipher";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-cipher";
      groupId = "org.sonatype.plexus";
      sha512 = "deb948be3a9f6a2fa74adca17e54b1074948267b3a35dd4000d92c559d0387650770ccee096ad8f01dd51c36caf63878dc0bcf57dfb1f2e3e1a9d51204096617";
      version = "1.4";
    };
  }

  {
    name = "com.jcraft/jsch.agentproxy.pageant";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jsch.agentproxy.pageant";
      groupId = "com.jcraft";
      sha512 = "d141c49675f7f16ea4eacbf8c426764aa28bfacc598f07b72fd10228565000954e6fad5334ffa5e20b7f4400f2dd5641aa39e99b8e8dceaf12c9dfa39930074c";
      version = "0.0.9";
    };
  }

  {
    name = "org.apache.maven.resolver/maven-resolver-api";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-api";
      groupId = "org.apache.maven.resolver";
      sha512 = "d00cd4ec92bfafe88d9c4f4ce91e6c2d581d416a096743d396c1712a5788239cf2d55f910e1c0024034f7e0d8028ff602339b87c8fd3ad54f665a8b63d142e67";
      version = "1.1.1";
    };
  }

  {
    name = "software.amazon.ion/ion-java";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "ion-java";
      groupId = "software.amazon.ion";
      sha512 = "6821a3fe0aa03a9a7421fa19e2dafea3f8af8162aeb7ee8c50735e5b1345a4adfe97822b166073b94d9aea01dc944f5558732348a448efdf350e29e160a7c38e";
      version = "1.0.2";
    };
  }

  {
    name = "com.fasterxml.jackson.core/jackson-annotations";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jackson-annotations";
      groupId = "com.fasterxml.jackson.core";
      sha512 = "72e0428338c22657d7eabcfc92fdbc08fef267f03802fce910c3c6a10e525e2095e6bf228cb415df5ae2f983fb00b6cd2e6420f897bbc3593ead9dca6a465ed3";
      version = "2.5.0";
    };
  }

  {
    name = "javax.annotation/jsr250-api";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jsr250-api";
      groupId = "javax.annotation";
      sha512 = "8b5dd24460e42763f3645205be4b4f80691e217d36bee5fc5b5df6ebc8782ed0f641fb9e2fe918a2d0eede32556656f6b61fe65d2cbec5086e61ef3d91e4d871";
      version = "1.0";
    };
  }

  {
    name = "org.apache.maven/maven-resolver-provider";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-provider";
      groupId = "org.apache.maven";
      sha512 = "78d62f1ff65269046ab99f7db1350ea0d72d1469bfc51b0b95784998178e6ba74b1715998e0f865de5a5347eb5d5523ce447edeb6546e66e05835a380e43d3e6";
      version = "3.5.2";
    };
  }

  {
    name = "org.apache.maven.shared/maven-shared-utils";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-shared-utils";
      groupId = "org.apache.maven.shared";
      sha512 = "e6de41cf0f1e76684d2cdc06276efb5c95d83ef054792635477ca0e429dcb8c3b0d4c25a9e2e7e417363052e79348c15df232983013828df916d63ce5e9f528d";
      version = "3.1.0";
    };
  }

  {
    name = "org.clojure/tools.deps.alpha";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.deps.alpha";
      groupId = "org.clojure";
      sha512 = "37804012e8c5ae6fb364885bbb3f60d559c0f1a7b4c22c9de5fc8a41de1d2456f5ab5afb821cbec7d830d531a2b79cbb958bc1e2cf684b255d5baa07d4fe686f";
      version = "0.8.584";
    };
  }

  {
    name = "commons-logging/commons-logging";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "commons-logging";
      groupId = "commons-logging";
      sha512 = "e5d1fc8ec4544e1fa0f7c4aae8dbcca466c4987bc92fbbc430b054b10d646b745add4a754b1be9d50edd64330c798c53173a97289db57a966312e16f934e9d1f";
      version = "1.1.3";
    };
  }

  {
    name = "com.google.guava/guava";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "guava";
      groupId = "com.google.guava";
      sha512 = "d8736b5151df2dd052c09548a118af15a8b8b40999954cd093cfd301445accb8b7e9532b36bac8b2fab9234a24e2e05009a33d0a8e149e841ebddbcc733a8e4c";
      version = "20.0";
    };
  }

  {
    name = "org.clojure/data.xml";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "data.xml";
      groupId = "org.clojure";
      sha512 = "db6edb16b486c500eede7c20bdbf5b83e52579ce5c4f251868acaa7c5594267eda9f1ef775f58b333fd7d4f8506595e58b4dee89df2de3e78a2ded16f01006e3";
      version = "0.2.0-alpha5";
    };
  }

  {
    name = "com.amazonaws/jmespath-java";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jmespath-java";
      groupId = "com.amazonaws";
      sha512 = "2ac2dcab282ff19803f7a36645f11c791b535472af3c1406f2e6bacfdbe6561fd59dba89887b7fabb500ac388dc53ede87ef59164e12f437fbeb19399dacefbf";
      version = "1.11.184";
    };
  }

  {
    name = "org.apache.maven.resolver/maven-resolver-spi";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-spi";
      groupId = "org.apache.maven.resolver";
      sha512 = "bb58083c5ef2b6d3915acb368c80bd55ca6318925c606ad74e3e4ab2fc0066c7fa2480cefa34487c5349f1edff02131bbaa4c3a426f9a52d5a6a66a4a023d452";
      version = "1.1.1";
    };
  }

  {
    name = "com.amazonaws/aws-java-sdk-core";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "aws-java-sdk-core";
      groupId = "com.amazonaws";
      sha512 = "289e6faa22498280e6c1190a0784b70176ec8352cdd263284b4f3525cd40cd6a2e965427cdc386518067592839a50ac7d7edcfba9b0adbdd4d19a0d0acb068a7";
      version = "1.11.184";
    };
  }

  {
    name = "org.codehaus.plexus/plexus-classworlds";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-classworlds";
      groupId = "org.codehaus.plexus";
      sha512 = "5bbbce8880a8513ba1314c202005de96fe263b48f45d5cd6a3a3577fdfe7ccd88c2b908093eec237e6624f5dbba664dfb8aa82939cc540bb6652c0f4eea7b333";
      version = "2.5.2";
    };
  }

  {
    name = "s3-wagon-private/s3-wagon-private";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "s3-wagon-private";
      groupId = "s3-wagon-private";
      sha512 = "bcff754a72e78cc90d18ff3732653111c4e33c218d61797b05991163104e54c1809480c233559c73762cc6a1b730c5d7880f87d081f7b6ddf567322c9bc99f60";
      version = "1.3.1";
    };
  }

  {
    name = "org.sonatype.plexus/plexus-sec-dispatcher";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-sec-dispatcher";
      groupId = "org.sonatype.plexus";
      sha512 = "5b947edcb05a1c17648ec9fe53dd2c66b4a86dd2b950d989255f6edd636fd5d50d18b8f31b3a1736dadd9cff6790a3d0355f2ed896c3eb7f72e009199fe9957d";
      version = "1.4";
    };
  }

  {
    name = "org.codehaus.plexus/plexus-interpolation";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "plexus-interpolation";
      groupId = "org.codehaus.plexus";
      sha512 = "d9183dc0920fb996901644903194883d1e1d1e8c4863f3c55bd6a9b14de996ee30651849435a92c8c55fc82be0e4524f1b2741957f9464434da292188ffcee70";
      version = "1.24";
    };
  }

  {
    name = "org.apache.httpcomponents/httpclient";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "httpclient";
      groupId = "org.apache.httpcomponents";
      sha512 = "7cc512de404e69cfad43d7bb80c441ca83710c1a8c6d410de1ff29f4313d85f2489a1f621c20171417e88cdb0ddfde5f92e62ffc213a04987683fb2e8411c032";
      version = "4.5.4";
    };
  }

  {
    name = "net.java.dev.jna/jna";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jna";
      groupId = "net.java.dev.jna";
      sha512 = "ea1b400cf25c6032160553f19baedb21103341f1c4236fbecf5f8462cc4db06f3459d7812ed0ad07a0b9faa3b576f8fa6edbd9ed64f9486b85e5bf982c21775e";
      version = "4.1.0";
    };
  }

  {
    name = "com.jcraft/jsch.agentproxy.connector-factory";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jsch.agentproxy.connector-factory";
      groupId = "com.jcraft";
      sha512 = "b4268c6d91899ffb82d5854eaef7c2bf7db3e1e223446d6ca10ae5d88174f944994e2d098582b6dd9ac0e45feacb9e52dd58ea9e41f4ff9b2241cbc5226fa567";
      version = "0.0.9";
    };
  }

  {
    name = "net.java.dev.jna/jna-platform";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jna-platform";
      groupId = "net.java.dev.jna";
      sha512 = "8ab09d04fd7e86b505f917e0a2b11d2c2e9f3a3e923a9fb94ad7e0bf6715f1923e02d8f3927f9580ab9f39f9fa213176013c3bcd977c2d1ef6461e2610571455";
      version = "4.1.0";
    };
  }

  {
    name = "org.clojure/tools.gitlibs";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "tools.gitlibs";
      groupId = "org.clojure";
      sha512 = "384e682c0b98fa77ec2cf3672a3b33346af19eafeff42f7af3d55a32225f7e261e16842cccc3c1d9c14ecf4559973f595e791e3c3be7b1eee9e082b8d1f016a7";
      version = "0.2.64";
    };
  }

  {
    name = "org.apache.maven.resolver/maven-resolver-connector-basic";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-connector-basic";
      groupId = "org.apache.maven.resolver";
      sha512 = "1919682a60881c7dbc21a4c7a419c95e9a6eca86077c6c887d5a9c3585cc2311389228f0493d22967447969f7d773726141930fbc9f3e1ed3e05b67878f26a56";
      version = "1.1.1";
    };
  }

  {
    name = "org.apache.maven.resolver/maven-resolver-impl";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-impl";
      groupId = "org.apache.maven.resolver";
      sha512 = "3ffcac7ed4a05b2b58669ce05cc348acad627be3e0941ee28a9a665fea43a571d554005dd72ec51130083f792e31894880525df3cd6962d7c95885340abfb7da";
      version = "1.1.1";
    };
  }

  {
    name = "org.slf4j/slf4j-api";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "slf4j-api";
      groupId = "org.slf4j";
      sha512 = "5dd6271fd5b34579d8e66271bab75c89baca8b2ebeaa9966de391284bd08f2d720083c6e0e1edda106ecf8a04e9a32116de6873f0f88c19c049c0fe27e5d820b";
      version = "1.7.25";
    };
  }

  {
    name = "org.apache.maven/maven-model";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-model";
      groupId = "org.apache.maven";
      sha512 = "11466c597a4dfd8de650f7e987ca441dcca05bed28de2f6842fcf9d3ba76e899a279fbd39dabfe4e545d5b1286d1d02a35cdc9a8337c08589abcca1e5f69690f";
      version = "3.5.2";
    };
  }

  {
    name = "org.eclipse.sisu/org.eclipse.sisu.inject";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "org.eclipse.sisu.inject";
      groupId = "org.eclipse.sisu";
      sha512 = "cfedc8e9bae80492f2231dcf407abfde59b09f99154f5b5a225bc47c767df8bff7b929f6928e4f722cbb65d3a25327b3dd4dfc1e9e755dbe9e53ac6fd389dfb8";
      version = "0.3.3";
    };
  }

  {
    name = "org.apache.maven.resolver/maven-resolver-util";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-resolver-util";
      groupId = "org.apache.maven.resolver";
      sha512 = "91dcbb8184f06e64da35d40c7b96e854f7311b6232d74b4b6d3489a51e0c05ebbee44f59367ab118974cdb6c5b3747981a41869cc7372691b2c2e1d0daa2ffa3";
      version = "1.1.1";
    };
  }

  {
    name = "org.apache.maven/maven-repository-metadata";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-repository-metadata";
      groupId = "org.apache.maven";
      sha512 = "711dfd8199a04758e986835d1bb286d964ef27cd55287ee5991716e4ce010a8adc83fde2490803273c56a1f5eabf89a428503be04d5aa5c20d0540ff1c7bd296";
      version = "3.5.2";
    };
  }

  {
    name = "aopalliance/aopalliance";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "aopalliance";
      groupId = "aopalliance";
      sha512 = "3f44a932d8c00cfeee2eb057bcd7c301a2d029063e0a916e1e20b3aec4877d19d67a2fd8aaf58fa2d5a00133d1602128a7f50912ffb6cabc7b0fdc7fbda3f8a1";
      version = "1.0";
    };
  }

  {
    name = "org.apache.maven/maven-builder-support";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-builder-support";
      groupId = "org.apache.maven";
      sha512 = "28140f33ecf3a8d3e1413c8c97059a7b8f938f28f7c6795b6213d9de8b88347c4c85754adb70c0f74d80a58610fc9d843d1f49ffcf24af435b00fe1d461d9de9";
      version = "3.5.2";
    };
  }

  {
    name = "com.jcraft/jsch";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jsch";
      groupId = "com.jcraft";
      sha512 = "97ec6de64f4870ee3c84f883bd3664562bfd600ca9f3364966e7dbee7e4e8520647c03f9f81d6808e330052ca1333e37f497d6252cd26fe721a90f573cbe2036";
      version = "0.1.54";
    };
  }

  {
    name = "com.jcraft/jsch.agentproxy.core";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jsch.agentproxy.core";
      groupId = "com.jcraft";
      sha512 = "b397effe92c9a93012ece3eb7660aacce3cef1c07d2b176cfcb7f7d8d735d22ca0c968e76fb36cb2a311566ee4b23982126671bff9baf11b4786606f2a6a0c81";
      version = "0.0.9";
    };
  }

  {
    name = "com.jcraft/jsch.agentproxy.usocket-nc";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "jsch.agentproxy.usocket-nc";
      groupId = "com.jcraft";
      sha512 = "b1c67975955bc2ef240e05ecb4c82335f40b038ee4483190e346f633ca1b78de9bfb848a5bee803971acf6b7282b2343461a12615257b2fcb01e7e2c349fc084";
      version = "0.0.9";
    };
  }

  {
    name = "com.amazonaws/aws-java-sdk-kms";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "aws-java-sdk-kms";
      groupId = "com.amazonaws";
      sha512 = "d73f3186d3ce1bbe9cd4db7ebb06a23366decf2ff383ff161bb9ca921b3c2085e83d591f4338bfee26f20953194ad375b4bd20c8f95f86b2ac0cea7067cec856";
      version = "1.11.184";
    };
  }

  {
    name = "org.apache.maven/maven-plugin-api";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-plugin-api";
      groupId = "org.apache.maven";
      sha512 = "1449f2b31dcdefe61a89f1ce782e58fa09ab7dd0ee16af64a1ac916004a10a8d7330f6cfe1e8a3d5bce18afcf42354862cff982b7b7be80a27430aa662df27f2";
      version = "3.5.2";
    };
  }

  {
    name = "org.apache.maven/maven-artifact";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "maven-artifact";
      groupId = "org.apache.maven";
      sha512 = "15dbb653d2e115514ce92558599cbe7bbad43132c79b152021c1e04c4e51c62a5fbf1eb87ff200a0472d1ca5c806be36d1c755a03e338de8a9a1277e43981431";
      version = "3.5.2";
    };
  }

  {
    name = "org.clojure/data.codec";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "data.codec";
      groupId = "org.clojure";
      sha512 = "c324b62a5f14b2f17e49f1b0fffa3f44d195cb5261e03c5e472ba4f2972135f4b06fd321c0887717c727f025fc1a0121283d16fbf923d7469856702614a288f3";
      version = "0.1.0";
    };
  }

  {
    name = "com.amazonaws/aws-java-sdk-s3";
    path = pkgs.fetchMavenArtifact {
      inherit repos;
      artifactId = "aws-java-sdk-s3";
      groupId = "com.amazonaws";
      sha512 = "7b5f96f2e6f8b10006423149e035b776a5082dbc75c3a87d7985bd58fc969b918ddd6a83183a12f467602b5625dec0d63b7c0de8be9de87bbf16c0298b0dc5d5";
      version = "1.11.184";
    };
  }

  ];
  }
  