class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2642/magpie-cli-darwin-arm64"
      sha256 "85057621108eba3ea87d2837dc39fec7f9fe199489f8753ca40c0d8ec04cfe87"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2642/magpie-cli-darwin-amd64"
      sha256 "49e8f2a88c2fbf2036da546fbab57844d946cd7beec5b54256f3a552720b0050"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2642/magpie-cli-linux-arm64"
      sha256 "4269b3c04c571a61929485ae623170a9e6166067fca202eef317fba3ce1083e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2642/magpie-cli-linux-amd64"
      sha256 "0cbb93baf025123f0e54293cc71d0d1aac78741874446bce79d92f958151ff32"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
