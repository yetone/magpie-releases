class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5046/magpie-cli-darwin-arm64"
      sha256 "12e687202a9e8e0fb3ee45ed55c469be9cb3589f4d398392158027e2e20c9e09"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5046/magpie-cli-darwin-amd64"
      sha256 "f90e30d36ff76a596142b9d9a3dde7636fb7ccab18d0690cc2878a797cc7aecf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5046/magpie-cli-linux-arm64"
      sha256 "8f9a3472c8b3eef79dbece03181ba4f20cd22b4b634e5d505dc07c5e3ebd5b85"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5046/magpie-cli-linux-amd64"
      sha256 "fa8cf051a985f7376e67435fbcdc95c87af5e5905ef4eb88e2f85e30eccf1274"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
