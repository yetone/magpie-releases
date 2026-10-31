class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2338/magpie-cli-darwin-arm64"
      sha256 "bccb79d3543d001a3dedc271010243280605cf9691a9da4cdc98dbe12f20e272"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2338/magpie-cli-darwin-amd64"
      sha256 "ed892a085d5adc7ea576cfeb7f3f02ed6cfe26a62b18a325d5c620594b9c8aa9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2338/magpie-cli-linux-arm64"
      sha256 "8236af55cd520e02f97dc6222aa0be49b035bf8b47a2f8f730fb3ced4ba2f8f9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2338/magpie-cli-linux-amd64"
      sha256 "97ebc7d28c42e745a06c4ebe2eb623e490b90e55ec0f41d57d29cc0c7ad62620"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
