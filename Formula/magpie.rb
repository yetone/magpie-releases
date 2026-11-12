class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3959/magpie-cli-darwin-arm64"
      sha256 "3aac175f20a16fb621f50f9da2f2df9284b075f29fc4e77c6aad65343a0898dd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3959/magpie-cli-darwin-amd64"
      sha256 "d175588519cbf5e823519fea9865bc91389371f7ef383eb7870ca0e3f2042aeb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3959/magpie-cli-linux-arm64"
      sha256 "4704f909c2ac8058f8113d699589c4a3e0d2987294b43775f18bb51e33e27fd0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3959/magpie-cli-linux-amd64"
      sha256 "0120292ce7a3b7315c976a343215d05c34c408e600af117985cff2be5d0125f8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
