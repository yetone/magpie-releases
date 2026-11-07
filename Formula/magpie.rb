class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3255/magpie-cli-darwin-arm64"
      sha256 "b056a46bc2a711ff807ab1a5a6b9e1c15ccd9da7a54c430baba923c2a76a7eb4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3255/magpie-cli-darwin-amd64"
      sha256 "dfa17624295571a5f22be182d57107bbf924e7b4048b184346d2ab40949d768c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3255/magpie-cli-linux-arm64"
      sha256 "d982257d8cc4ea9e7104ce23aaaf063280394957623bafb024a5185fa166b065"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3255/magpie-cli-linux-amd64"
      sha256 "f8972cd96c39884385c61b022db0121ebb4f11a13d441e1936b8405790e1c99e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
