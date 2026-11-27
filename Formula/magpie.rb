class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4939/magpie-cli-darwin-arm64"
      sha256 "f626ea6ce1831a5d2bd11bad6e1bc569615ecfdb3e6750015bae215f6b32f1f1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4939/magpie-cli-darwin-amd64"
      sha256 "4e4c71606e0b8262b2f3f3fee2cbbd9813441467145ee64e11252bd38306449c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4939/magpie-cli-linux-arm64"
      sha256 "2df8438953d0ae94c1558206096ced2b22742d95edbed3cb774d3c0c74c196bf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4939/magpie-cli-linux-amd64"
      sha256 "fc1838d806871ded4c70fb5c7d92abdb65b5642b0ddd13c4938f187f8976aefd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
