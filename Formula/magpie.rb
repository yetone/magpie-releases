class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3132/magpie-cli-darwin-arm64"
      sha256 "8c404dbbea577f4a750c088960a0b2eff9fe16c0eefd8c9d16e71029c8aa80be"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3132/magpie-cli-darwin-amd64"
      sha256 "312c163ee8a35f20baa466d808ccc139f1602335cef1b13b25a8fac9db6406ef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3132/magpie-cli-linux-arm64"
      sha256 "e2ad99cd3938f27e0cc79a756abdf142d8535274d23cf8a4ff13747d6b923dce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3132/magpie-cli-linux-amd64"
      sha256 "d60d105656472781735415b3b0422aa7336edb1848a09e432c830670bcbec551"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
