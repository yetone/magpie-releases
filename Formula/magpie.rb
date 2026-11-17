class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4359/magpie-cli-darwin-arm64"
      sha256 "12a51f144745a76c63717e00ae5eb90ae1ce63f43e2a5eb66e27116019432ef2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4359/magpie-cli-darwin-amd64"
      sha256 "4d64babd81978a32c8059e78ace9db93887c2c46bd07d961269555de1c6c56ca"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4359/magpie-cli-linux-arm64"
      sha256 "754ba70fa005a1081e19bb0f4b069b3f0ea821d32dfc7c2f5cd099caaac08dd2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4359/magpie-cli-linux-amd64"
      sha256 "d13f12d8e4327ed43731efd855cd0c790124db9f1b94030dd8f754c9cc4a6481"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
