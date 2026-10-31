cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2409"
  sha256 arm:   "6c61f0fb640737d44e8f5bff0defb0313131685718071e98d426de1f808e142d",
         intel: "85523fff9961da7bbd2d83c6818f61fad71e124d25dcbd66be71a1aea8a5a084"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
