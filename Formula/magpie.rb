class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3282/magpie-cli-darwin-arm64"
      sha256 "e87baeb22d50002f8d3507a2f2f1ec3411ac6098f59d301600b694de05e8e9e5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3282/magpie-cli-darwin-amd64"
      sha256 "80046b152f082d862e5f346f2610ca13e95a816fd25074c6598a31aadfe1f00b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3282/magpie-cli-linux-arm64"
      sha256 "75dd95c22d41a4ee5065f1c1371d3d6e9d0a8e1b235b5a597bbaa49cb76d01b9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3282/magpie-cli-linux-amd64"
      sha256 "679073ca1716c70e95347762f90cff4b029f60119e32850fe5e2fbde705f37eb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
