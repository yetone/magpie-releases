cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5017"
  sha256 arm:   "de72529e29884744c8dafa3f73e512d475784ef64dc7dfedc77726d3897c4bd7",
         intel: "1c8dd9ccea8be893cab6ee12b7b50373207f3432b79c256e52a06b5a7829463a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
