class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1034/magpie-cli-darwin-arm64"
      sha256 "645ff6ce71fc35871d8b84798541f6d21fd04eebb98dbbd0929d4d4c20e9a4a3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1034/magpie-cli-darwin-amd64"
      sha256 "ac88882ea6691dc34a613a56dc653d665e7acb19e16a1339aa2ae4f73161112e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1034/magpie-cli-linux-arm64"
      sha256 "27492e05082c44e6a97712fc625e46ec46f62cefdb89b5f68afac8805af33bea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1034/magpie-cli-linux-amd64"
      sha256 "f215e3174336e71ccd5708b0132ff51ba725449557ebd25e9091f95f72fb0307"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
