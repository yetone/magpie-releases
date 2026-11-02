cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2726"
  sha256 arm:   "ee7f664bf2e570850e3eaa3e90f3c3e03f43da798a526d187efb3e81de77fdad",
         intel: "7806a1a630cd9501c40e915a61424c7b7926816aa2eb8d29170da78d391d858e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
