cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2786"
  sha256 arm:   "8fc2e1a0a124c246ff3362cad77348d40d82b17dae511f80c9f2cea1cfd1f625",
         intel: "adec042e77d9346e6b05a6269c45d58ff2565e86f4eca3769467e76f664b53e8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
