class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3501/magpie-cli-darwin-arm64"
      sha256 "d619cc2ddec5c7c17c1170a38d50b90c283d50dcc1f447a2860ef1cbfa927c09"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3501/magpie-cli-darwin-amd64"
      sha256 "c0fdaf8eae8b135181cc45e340b8e59487ff4eb57b142c03751bbc98937d9a7c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3501/magpie-cli-linux-arm64"
      sha256 "2e54e5465bb73fd401167e73a2a82eef3318383385984ed239ee455af09e68b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3501/magpie-cli-linux-amd64"
      sha256 "ba0f56bcbd847316f05877932a2d57652d71783ba450715574b0072eb2688dde"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
