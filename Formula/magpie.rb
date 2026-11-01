class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2508/magpie-cli-darwin-arm64"
      sha256 "e29773df7f89911affacb23fe86a9899f57cc87f5b9788963304baefc8bec146"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2508/magpie-cli-darwin-amd64"
      sha256 "ca73360c5c88afbd9333dd45409185f4ba2e8addde161e69a4234d74d63f194d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2508/magpie-cli-linux-arm64"
      sha256 "29e0459a1105fdefb1208da2d25b8522cd805afcd21e4eace8d52525b17a7eb8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2508/magpie-cli-linux-amd64"
      sha256 "f7874a5e6d17ef152721f9bb06df902641b8f907a9251dadbe9e2ea9e4311be6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
