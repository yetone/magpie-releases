cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2153"
  sha256 arm:   "2c6364ee639e51f226ba8d6895105f69c4dac84a1238151c95fb1f0c1837a291",
         intel: "0dbceb6a58664d615fa545fc4f3f98493a35627b88d6edeaf4163d69f2503fa2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
