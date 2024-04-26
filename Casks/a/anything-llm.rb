cask "anything-llm" do
  arch arm: "aarch64", intel: "x86-64"
  suffix = on_arch_conditional arm: "-Silicon", intel: ""

  version "1.5.1"
  sha256 arm:   "ea8c93b3684cd01d85d90d893b9f7fb573629d0713cd3478801280395b1fb03a",
         intel: "ffb42c44c14af7ffc4e326a08124f714a5665aa13f0361eb65c6596af4b3d7a0"

  url "https://s3.us-west-1.amazonaws.com/public.useanything.com/latest/AnythingLLMDesktop#{suffix}.dmg",
      verified: "s3.us-west-1.amazonaws.com/public.useanything.com/"
  name "AnythingLLM"
  desc "All-in-one Desktop application with full RAG and AI Agent capabilities"
  homepage "https://useanything.com/"

  livecheck do
    url "https://s3.us-west-1.amazonaws.com/public.useanything.com/latest/version.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  app "AnythingLLM.app"

  zap trash: "~/Library/Application Support/anythingllm-desktop"
end
