class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1902/magpie-cli-darwin-arm64"
      sha256 "c529221e0ee73801216482478bd04af9dfe9a454744bbce71dfff33443209544"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1902/magpie-cli-darwin-amd64"
      sha256 "a2bef62e47f6c1e134ad0f623a5ed6b7aa502dcf80f08048b5b32fd783d6e819"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1902/magpie-cli-linux-arm64"
      sha256 "d25cf3b7063f802c4304a4affe650564156b614271ce017ae4fa98fdff96a322"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1902/magpie-cli-linux-amd64"
      sha256 "1aa502ae82887ec37a79bbb04778fa23b3622722dd8eb785261225ec96349b0e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
