cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3518"
  sha256 arm:   "6aafbaa49b45320cbedb41632397d0b74615212c88c71b8b80b14721f89575c4",
         intel: "99ed8db99904d9a109f25be5e7f765f779d7cf5f0117988c782007e372a2b752"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
