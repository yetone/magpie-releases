cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3596"
  sha256 arm:   "4d9cbd225518c99b200f8aed148f809e3959f367960efe1b8ef96e7581ca3b8d",
         intel: "80c11304d2a4ff384c79796955185bf917bad82541603be03ebce5b91d469a66"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
