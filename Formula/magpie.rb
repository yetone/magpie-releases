class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3519/magpie-cli-darwin-arm64"
      sha256 "27e5c155e49164215721802bf3e8b1f0490f2fa4e76b90f5781d764d2babf4ad"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3519/magpie-cli-darwin-amd64"
      sha256 "f26e30e0a9310b7362a87b9b5bf001f9d9d9ac39f5a9b872bbf4b7e0072974e5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3519/magpie-cli-linux-arm64"
      sha256 "75a0e1c02247b739749b19c2bdd7aa2328cde03a4f81065281fa6304595b0772"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3519/magpie-cli-linux-amd64"
      sha256 "31d004572856c4de45dc97d4ebedfcb786e4fe57d7ec71ee7caa32eeaa149fca"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
