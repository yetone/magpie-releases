cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2725"
  sha256 arm:   "a1d42da6d4f92c71fb3c4edb3594e80c8e83cb294f8886d131e320c8b9e8786e",
         intel: "e09d439536fdb8fa6ad4458e082d094d8f533dc5aff022a642bb26952a0938d7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
