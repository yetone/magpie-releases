cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2008"
  sha256 arm:   "94a53bf509c409b16030b02ee4fecb2fff92041636492d42137cc352b9ae4b4a",
         intel: "13114a085e885cc37ce98a4ca8ada7e642fc60b6250b0f558773be088a23af97"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
