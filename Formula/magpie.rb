class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.147/magpie-cli-darwin-arm64"
      sha256 "70d6284b9704d076a731aeede8557ad45bf73f7f7a042add195c3d170bd38fa3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.147/magpie-cli-darwin-amd64"
      sha256 "4f2264fac5c6ad6fdb58e374e0eb667cb84b24802d909eec844d5f91e611f0df"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.147/magpie-cli-linux-arm64"
      sha256 "523046a454d7aa6eca203ac59c8e2785558bd869979ba4ab9756c649a69fba19"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.147/magpie-cli-linux-amd64"
      sha256 "34b4607537a3815341a520d382ecd22062ad667fc1f99d7f28befa03daea0d53"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
