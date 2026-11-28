cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5023"
  sha256 arm:   "a93f52f6f255f6b42daaf8637f6c159a89a7776faf658f4aab56ef285dbcf20a",
         intel: "fa14f3b106e178e799bde314cb97b92090c5a07164e083050093808cfe098db5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
