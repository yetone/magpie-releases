cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4867"
  sha256 arm:   "0ff5173bffa73888c45681349eb613e8f2151473b05aafd19c8ed20c9d0d31a3",
         intel: "caf9b402c58b337385bb08982d4e791838cfaad01c03df3b70ef01f2b8a6724b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
