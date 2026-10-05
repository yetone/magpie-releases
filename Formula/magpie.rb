class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.962/magpie-cli-darwin-arm64"
      sha256 "976cf04ac9b9210f9e6488cad9b9cec4de810b0eaf0a66b4f1b0d869cb50ad00"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.962/magpie-cli-darwin-amd64"
      sha256 "dc98870fb2aedd69bd1820ef273afaad013d03bbe2f352d4647fa095f3105f43"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.962/magpie-cli-linux-arm64"
      sha256 "8a4ea3a7943b77a7e8820eae64e3862a942d140d8fe785d55c7f74f584dbfb86"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.962/magpie-cli-linux-amd64"
      sha256 "495df20d54684842681e87ba2d8f61f512343aee1ddd05ed62f7e24c4578fe02"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
