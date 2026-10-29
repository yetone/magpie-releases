class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2083/magpie-cli-darwin-arm64"
      sha256 "82a23159475865c0707972f9e56611b643c232117394a1bd8213885528a40336"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2083/magpie-cli-darwin-amd64"
      sha256 "1585a9a9e3a6bc96478f28e407203a06a5ad3b051f1624d66449168c12449ac9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2083/magpie-cli-linux-arm64"
      sha256 "430d9fd00fb89ce7a3bbe12480f325605bf6164623d3f9d95e1e0cce006fbc63"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2083/magpie-cli-linux-amd64"
      sha256 "66be02dd6394c867cf5736a1f51ac6d871cb425252d801d9dc0f1bbab4b436ec"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
