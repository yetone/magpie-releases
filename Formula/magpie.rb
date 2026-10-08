class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1119/magpie-cli-darwin-arm64"
      sha256 "967893f145a66e57acf1710ab6ce8e27615d8e7055d1fada6a68e79012850be0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1119/magpie-cli-darwin-amd64"
      sha256 "f083475e45a3a7630a361544194c33188f6b438be5038ff0ace90d9dd3a4f58a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1119/magpie-cli-linux-arm64"
      sha256 "3dfd3fa559bef890216a4433c571409c8d1e6372222d5c3ed4fd70655a2b7cd9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1119/magpie-cli-linux-amd64"
      sha256 "a618df0187451a8fb8de6d549242ca6b24087403735360b293b425e09ee5818b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
