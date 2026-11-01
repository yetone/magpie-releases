class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2561/magpie-cli-darwin-arm64"
      sha256 "786f3e48b545c519284cc9e7298cf984eb459eb0416eeb65dc792a136a96bffc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2561/magpie-cli-darwin-amd64"
      sha256 "3d099f418beb8cff74aab9a637acf726a921b9019b49895116f03041b64cf8e8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2561/magpie-cli-linux-arm64"
      sha256 "1e734401b3fb843d123519441f13c6ef2d456a5b7e857a28a3b4e7657dd70aa1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2561/magpie-cli-linux-amd64"
      sha256 "5eff27f48b6d0f630efd09cc31c3e32cd1853b1cc9d81b21e3d964ca37fbbbaf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
