class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4110/magpie-cli-darwin-arm64"
      sha256 "32c932b2a28bc72f00e509997c5e0fc7b6c1b0dca913ab4d96addf3eeccd3880"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4110/magpie-cli-darwin-amd64"
      sha256 "950f0945f9c737b779d3a7187695fbb53fefaf0289141cee2195b473ae1e640e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4110/magpie-cli-linux-arm64"
      sha256 "0432459589759a41e4bcb12ba4a8de688bba2c043649a881ab4558e090a29df8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4110/magpie-cli-linux-amd64"
      sha256 "fd8d80e6f8781d00c0b6302382d53191f167faa77dff5bb6992c3acabe6c2752"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
