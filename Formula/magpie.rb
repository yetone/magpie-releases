class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3633/magpie-cli-darwin-arm64"
      sha256 "c86efac33f11ffb1fc156bb7cda7f28ec55bf10f48d939faa3858b29df893e7b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3633/magpie-cli-darwin-amd64"
      sha256 "badd40af416cde9f1f85df738d7a88a1fd69932bed1718b36236cf5eb7a3a457"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3633/magpie-cli-linux-arm64"
      sha256 "390bb3c919a0070ca47de93cf061e99a7b8da5f756c8e72fbe934e325706f235"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3633/magpie-cli-linux-amd64"
      sha256 "36f379298f54589185e2774994e6d17cfe14d80fb81c09b50cc90459e4fe368c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
