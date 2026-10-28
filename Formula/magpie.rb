class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1962/magpie-cli-darwin-arm64"
      sha256 "4cc4f2a2a36f761ab3af0c84ccd2f03e0a6ebdb4305b7b4aef68e297b6146c83"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1962/magpie-cli-darwin-amd64"
      sha256 "62f99650d35ef461e8672a54fce1ca234881e3ea65ac6d35f3c967d526249aa1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1962/magpie-cli-linux-arm64"
      sha256 "54836d8af17302bce8e562d72bc701a994a19deec328d0e3be8dd643cc54ba2d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1962/magpie-cli-linux-amd64"
      sha256 "dcbc2801db061917ae5569efdf269886e5400ada5ac5631b0217b0c657f4720c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
