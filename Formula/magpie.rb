class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3604/magpie-cli-darwin-arm64"
      sha256 "eb04588d8a64403029d3d10688bc36b88fafc7831919a63e601cea186473b143"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3604/magpie-cli-darwin-amd64"
      sha256 "ac1f566ed0c62330e3e8558fd32e0e57227fe5385638f3c138ac6e008c522ac4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3604/magpie-cli-linux-arm64"
      sha256 "e3f1e2fa5b173cae64dff69168b031c21a35ff1c9943bf8a69894c1e1bf1d9e6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3604/magpie-cli-linux-amd64"
      sha256 "3fc564b37819caad7627a7014fed55fea6771f22f9db98dad1c36979d7e8c00c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
