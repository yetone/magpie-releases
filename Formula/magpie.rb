class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3995/magpie-cli-darwin-arm64"
      sha256 "862f2616043f03d0099287e9e02cfa661825ffc8ebeb099d76c09071f9382476"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3995/magpie-cli-darwin-amd64"
      sha256 "4cfca108bf7d818afd9291cdaf35d3b00a7a02a284d77f89ceda39eab57e3763"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3995/magpie-cli-linux-arm64"
      sha256 "a0dcab2c3f9b1d983220c960685c50d7f2eb6f2f49c4b1264ab1be0444d9c906"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3995/magpie-cli-linux-amd64"
      sha256 "1904b8194fbbebed296da669af021e5af7892c8fedecbc6462676647006483f4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
