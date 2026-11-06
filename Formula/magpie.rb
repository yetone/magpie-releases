class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3140/magpie-cli-darwin-arm64"
      sha256 "b9dbf701d48003a2b210b58eb918269e15cae15e9b7775687bcf23579020b66e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3140/magpie-cli-darwin-amd64"
      sha256 "b31769d85adb63ce0f5a1cfe52798a5cf24e431a208ac5d8f63fba6ed5b64e49"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3140/magpie-cli-linux-arm64"
      sha256 "2da954681549d1ee02bf5cbe9b4ee260220792a029c5dae296f97a8a24c39fe0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3140/magpie-cli-linux-amd64"
      sha256 "8a8ad97330cfa87fe1cafc4014433b65b7d80e7d060d0e0e962efdaa7d31b835"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
