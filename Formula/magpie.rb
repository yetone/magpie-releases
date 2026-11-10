class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3528/magpie-cli-darwin-arm64"
      sha256 "5afb5e14f77f0a9832df1b3987e9dc56e5049cc886632d35d6c099a7fb39a0b2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3528/magpie-cli-darwin-amd64"
      sha256 "79c28eff3e146f610c178708f3fe915c5a524914e725b3c24af73ddde166e689"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3528/magpie-cli-linux-arm64"
      sha256 "f50da85247280df2647b60a718ae4465f3a18c8e6276e883aecc28a43b06d7cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3528/magpie-cli-linux-amd64"
      sha256 "e7a5d4603e92ecdb8493b44f1ab101c8fb45bc5fc1d09f53bc2e7a5f30205996"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
