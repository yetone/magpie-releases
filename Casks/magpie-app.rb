cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3029"
  sha256 arm:   "719bad51a607cc38f7c889de8761f6445d9bdc9261241329ef76a7d9ba36f776",
         intel: "46a2ae697b57eccc0326f8126225b1a02a28b6767d8004e004947940f5b84a59"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
