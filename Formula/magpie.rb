class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4329/magpie-cli-darwin-arm64"
      sha256 "b1e31e6fc5fe665d916fa243fa09a3fa2ac01c2d9234234db018833ea16a0112"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4329/magpie-cli-darwin-amd64"
      sha256 "3e9cf79b054caa8660ceef50bc9d3d6c378c35040c2bd277d7992bcd14f18553"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4329/magpie-cli-linux-arm64"
      sha256 "91f3e3e755e2acdf4a061e54c2894d226257cb270dbbb1e36e8a8b369f29d2de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4329/magpie-cli-linux-amd64"
      sha256 "5753f9dc93094cdb7dca4503318fdd4804b8f0baf36be911071af65c65556004"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
