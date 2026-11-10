class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3533/magpie-cli-darwin-arm64"
      sha256 "15fdaa601b2912cedda58cd6e2cd3661a6b6bac928eb8b3c8422bd4f16b88c1a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3533/magpie-cli-darwin-amd64"
      sha256 "027499e1c4906e1f4b5cf022aba77beeb4bc023055bf750ca1e860c03bc6ab83"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3533/magpie-cli-linux-arm64"
      sha256 "3a2059cfcc575b6572a228ac421b88b7e43d61f350ff72a7836e67980102ba49"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3533/magpie-cli-linux-amd64"
      sha256 "fa156bae6d0d4b539d04905568b8ba1935fef1e3093d4d1ae3a1c04408da4280"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
