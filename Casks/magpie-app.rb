cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3526"
  sha256 arm:   "83e4efced018ec11656db148a3ea218453c62daa81a4f67e8af09c92b6223fa9",
         intel: "842507f59912079da72acca4e1e7809304d53fc4652cc2544b7f6b92d6c54232"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
