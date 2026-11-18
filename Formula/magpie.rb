class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4432/magpie-cli-darwin-arm64"
      sha256 "6fac2f173ce593b256decc19b01c018e3d5f5803b34d953a0937b1a22666dc91"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4432/magpie-cli-darwin-amd64"
      sha256 "fb2df75984061859e142695a246ac38a44c78647a2440a6b20acc8d6ac03be46"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4432/magpie-cli-linux-arm64"
      sha256 "a678239447965b0ae5d4a77f185e0f837d5dec6c3bf0857220378add6e751939"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4432/magpie-cli-linux-amd64"
      sha256 "82409e4ba63b11230a2485ccec4e4b325ea16eefcb91f0a104aa1cf5043c8d05"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
