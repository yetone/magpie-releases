cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2953"
  sha256 arm:   "8512362feb0664ff3006a1f6172f7a8d9c9d1833c93df0b6bb6a757426b7fe55",
         intel: "09dde10a1ed4b07f46ef454652405822df1b592a6766269e8053b923bc56c872"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
