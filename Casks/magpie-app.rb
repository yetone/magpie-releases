cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.151"
  sha256 arm:   "561345d3753a5255a61f3df1eeb939e57499754a5282150680b09872b689f61c",
         intel: "0c100bf88529444f747c2579495d51b497c36b50d57f0af1ed37d79747352403"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
