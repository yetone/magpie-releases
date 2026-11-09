class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3456/magpie-cli-darwin-arm64"
      sha256 "e9844d39bcbff776fac731f7c6135000eac95789d03d7ba104cee6c5b5a7f5f8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3456/magpie-cli-darwin-amd64"
      sha256 "254c9b5607221027fbd67118535bcf2af14f92a5b8ff17bee9b774c9acdd4995"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3456/magpie-cli-linux-arm64"
      sha256 "4044cb5acf3875b91a9dd5411c1d4d517120e38509d0603263db983ac99e4e8e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3456/magpie-cli-linux-amd64"
      sha256 "ba844aea9cb666eeb2899c9cc1b3fc07762af0552d3240ae15bd9998bb5ed622"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
